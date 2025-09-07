###############################################################################
#
#  Star Rider Manchester Code Ripper
#  Started on 8/29/2025 by SynaMax
#
#  Inspired by Aaron Giles and his VBIParse code
#  https://github.com/aaronsgiles/VBIUtils/blob/master/VBIAttach/vbiparse.c
#  
#  This utility reads the Manchester Code from the laserdisc image data and
#  converts each selected horizontal line into 3 bytes.
#
extends Node2D


var testvideo = FFmpegVideoStream
#var testimage = Image.load_from_file("res://images/Star_Rider_frame 11107 (actual 11111).png")
var testimage = Image.load_from_file("res://images/00050.png")
var texture = ImageTexture.create_from_image(testimage)
@onready var texture_rect: TextureRect = $TextureRect

# These are the horizontal lines that we want to extract the Manchester data from
#var height_table : Array[int] = [16,478,480,482,484,486,488,490,492,494,496,498,500,502,504]
var height_table : Array[int] = [16,479,481,483,485,487,489,491,493,495,497,499,501,503,505]
var width : int = testimage.get_width()

var rawsrc : Color
var rawlumi : float

var srcabs : Array = []
var srcabsval : int

var firstedge

var expectedbits : int = 24
var finalvalue : int
var finalarray : PackedByteArray

var path : String = "res://images/SR"
var file_name : String
var file : FileAccess

func _ready() -> void:
	load_dir()
	#ReadVBI()

func ReadVBI():
		# first scan line 16, then scan lines 478 - 504
	for line in range(height_table.size()):

		texture_rect.texture = texture
		srcabs.resize(width)

		# sample pixel on selected line and find brightness
		for x in range(width):
			rawsrc = testimage.get_pixel(x,height_table[line])
			rawlumi = rawsrc.get_luminance()

			if rawlumi >= 0.33:
				srcabsval = 1

			elif rawlumi <= 0.33:
				srcabsval = 0

			# add pixel bit to array
			srcabs[x] = srcabsval


		# find the first transition; this is assumed to be the middle of the first bit */
		for x in range((width - 1)):
			if (srcabs[x] != srcabs[x + 1]):
				firstedge = x
				if firstedge > 0x80:
					firstedge = 50
				break
			# if we have an invalid firstedge, then reset it to a normal number and proceed with
			# adding zeros to buffer


		# set up the actual Manchester data
		var results : Array[int]
		results.resize(expectedbits)

		# these numbers have been fine-tuned to generate the proper values.
		# The first Manchester line is hidden in the VBI and looks slightly different
		# compared to the bottom data that's part of the visible image.
		for x in range(expectedbits):
			var marker : int
			var err : int
			if line == 0:
				marker = x * 28.7
				err = 5
			else:
				marker = x * 29.1
				err = 7
			var leftbit : int  = firstedge + (marker - err)
			var rightbit : int = firstedge + (marker + err)

			var bitleft = srcabs[leftbit]
			var bitright = srcabs[rightbit]

			# each bit must be different
			if bitleft == bitright:
				print("Manchester decode failed due to missing bit transition!")
				print("Filling empty space with zeros")
				results[x] = 0
				#return

			if bitleft < bitright and bitleft != bitright:
				results[x] = 1
			else:
				results[x] = 0

		finalvalue = _array_to_int(results)
		print("%x" % finalvalue)
		
		# convert variant to bytes, then clean up
		var test = var_to_bytes(finalvalue)
		test.reverse()
		test.remove_at(0)
		test.resize(3)
		
		# add bytes to buffer array
		finalarray.append_array(test)

	save_data()
	finalarray.clear()

func _array_to_int(bit_array: Array[int]) -> int:
	# Iterate through the bit array from right to left (least significant bit to most significant bit)
	var result := 0
	for i in range(bit_array.size()):
		var bit = bit_array[bit_array.size() - 1 - i]
		if bit == 1:
			# Set corresponding bit in result
			result |= (1 << i)
	return result

func save_data():
	var file_marker : int
	var save_file = FileAccess.open("user://star_rider_data2.bin", FileAccess.READ_WRITE)
		
	file_marker = save_file.get_length()
	save_file.seek(file_marker)

	#save_file.store_buffer(test)
	save_file.store_buffer(finalarray)
	# Padding
	save_file.store_16(0xFFFF)
	save_file.store_8(0xFF)
	
	save_file.close()

func load_dir():
	var dir = DirAccess.open(path)
	if dir:
		dir.list_dir_begin()
		file_name = dir.get_next()
		while file_name != "":
			#check for bin file extension here
			var extension = file_name.get_extension()
			if extension != "png":
				file_name = dir.get_next()
				continue
			else:
				if file_name.begins_with("._"):
					file_name = dir.get_next()
					continue
				print("Processing file: " + path.path_join(file_name))
				#filepath = path.path_join(file_name).get_basename()
				# Add your file processing logic here
				#file = FileAccess.open(path.path_join(file_name), FileAccess.READ)
				testimage = Image.load_from_file(path.path_join(file_name))
				ReadVBI()
			file_name = dir.get_next()
		dir.list_dir_end()
	else:
			print("Could not open directory: " + path)
