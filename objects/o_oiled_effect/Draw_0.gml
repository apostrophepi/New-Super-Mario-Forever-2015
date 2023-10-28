if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
draw_sprite_ext(sprite_index,0,x,y,1+sin(degtorad(stream))/20,1-sin(degtorad(stream))/20,0,c_white,1)
stream+=1}

