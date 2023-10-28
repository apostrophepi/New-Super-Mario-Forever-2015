if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {

draw_sprite_ext(s_hill_2,0,x,y,1+sin(degtorad(stream))/20,1-sin(degtorad(stream))/20,sin(degtorad(stream))*5,c_white,1)
stream+=2

}

