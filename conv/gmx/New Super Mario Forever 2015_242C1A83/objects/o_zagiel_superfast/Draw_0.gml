if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4 {
draw_sprite_ext(global.zagiel_statek,0,x,y,1+sin(stream)/80,1+sin(stream)/180,0,c_white,1)
stream+=5}

