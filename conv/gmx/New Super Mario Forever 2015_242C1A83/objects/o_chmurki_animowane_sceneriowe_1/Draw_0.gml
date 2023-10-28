if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.88 {
stream+=0.02

draw_sprite_ext(s_clouds_big_1,0,x,y+10,1+sin(stream*2)/30,1-sin(stream*2)/30,sin(stream)*5,c_white,1)
}

