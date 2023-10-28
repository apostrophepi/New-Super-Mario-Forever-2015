if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(s_lampka_jaskiniowa,0,x,y,1,1,sin(stream)*20,c_white,1);stream+=0.1

draw_sprite_ext(s_swiatlo_jaskiniowe,0,x+sin(stream)*20,y+40,1+sin(stream)/5,1+sin(stream)/5,0,c_white,0.5)

}

