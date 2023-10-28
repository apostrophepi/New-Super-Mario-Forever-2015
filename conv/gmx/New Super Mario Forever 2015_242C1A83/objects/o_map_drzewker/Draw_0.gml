if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(s_map_shadow_1,0,x,y,3+sin(stream)/40,1-sin(stream)/10,0,c_white,0.5)
draw_sprite_ext(s_map_drzewker_1,0,x,y,1+sin(stream)/40,1-sin(stream)/10,360+sin(stream/2)*20,c_white,1)
stream+=0.15}

