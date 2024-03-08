start /wait asl starrider_image_0.asm -o sr_img0.p
start /wait p2bin sr_img0.p rom_1.u4 -r $0000-$3FFF
start /wait p2bin sr_img0.p rom_2.u19 -r $4000-$7FFF
start /wait asl starrider_image_1.asm -o sr_img1.p
start /wait p2bin sr_img1.p rom_3.u5 -r $0000-$3FFF
start /wait p2bin sr_img1.p rom_4.u20 -r $4000-$7FFF
start /wait asl starrider_image_2.asm -o sr_img2.p
start /wait p2bin sr_img2.p rom_5.u6 -r $0000-$3FFF
start /wait p2bin sr_img2.p rom_6.u21 -r $4000-$7FFF
start /wait asl starrider_image_3.asm -o sr_img3.p
start /wait p2bin sr_img3.p rom_7.u7 -r $0000-$3FFF
start /wait p2bin sr_img3.p rom_8.u22 -r $4000-$7FFF
start /wait asl starrider_image_4.asm -o sr_img4.p
start /wait p2bin sr_img4.p rom_9.u8 -r $0000-$3FFF
start /wait p2bin sr_img4.p rom_10.u23 -r $4000-$7FFF
start /wait asl starrider_image_5.asm -o sr_img5.p
start /wait p2bin sr_img5.p rom_11.u9 -r $0000-$3FFF
start /wait p2bin sr_img5.p rom_12.u24 -r $4000-$7FFF
start /wait asl starrider_image_6.asm -o sr_img6.p
start /wait p2bin sr_img6.p rom_13.u10 -r $0000-$3FFF
start /wait p2bin sr_img6.p rom_14.u25 -r $4000-$7FFF
start /wait asl starrider_image_7.asm -o sr_img7.p
start /wait p2bin sr_img7.p rom_15.u11 -r $0000-$3FFF
start /wait p2bin sr_img7.p rom_16.u26 -r $4000-$7FFF
start /wait asl starrider_image_8.asm -o sr_img8.p
start /wait p2bin sr_img8.p rom_17.u12 -r $0000-$3FFF
start /wait p2bin sr_img8.p rom_18.u27 -r $4000-$7FFF
start /wait asl starrider_image_9.asm -o sr_img9.p
start /wait p2bin sr_img9.p rom_19.u13 -r $0000-$3FFF
start /wait asl starrider_image_font.asm -o sr_img_font.p
start /wait p2bin sr_img_font.p rom_25.u46 -r $C000-$DFFF