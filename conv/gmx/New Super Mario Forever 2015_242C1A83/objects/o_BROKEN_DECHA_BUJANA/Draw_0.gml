if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.8 {
draw_sprite_ext(global.castle_decha,0,x,y,image_xscale,image_xscale,sin(bujanie)*10,c_white,1)

bujanie+=0.03

}

