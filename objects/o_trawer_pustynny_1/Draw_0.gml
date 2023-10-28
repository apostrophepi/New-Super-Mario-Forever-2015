if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(sprite_index,0,x,y,1+sin(stream)/20,1-sin(stream)/20,sin(stream/10)*2,c_white,1)


stream+=0.05


}

