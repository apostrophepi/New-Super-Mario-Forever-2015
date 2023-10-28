if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(global.hot_steam_sign,0,x,y,1,1,sin(stream)*20,c_white,1);stream+=0.02}

