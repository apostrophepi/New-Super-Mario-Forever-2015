if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
draw_sprite_ext(global.obraz_bowsera,0,x,y,1,1,sin(stream)*10,c_white,1)
stream+=0.025
}

