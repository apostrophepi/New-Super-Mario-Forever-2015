if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_murek_jaskiniowy,0,x+sin(degtorad(stream/4))*5,y-sin(degtorad(stream/2))*10,1+sin(degtorad(stream))/8,1+sin(degtorad(stream))/8,sin(degtorad(stream))*5,c_white,1)
stream+=1
}

