if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
draw_sprite_ext(global.water_kszaker_1,0,x,y,1.8+sin(degtorad(stream))/10,1.8-sin(degtorad(stream))/5,sin(degtorad(stream/5))*10,c_white,1)

draw_set_blend_mode(bm_add)
draw_sprite_ext(global.water_kszaker_1,0,x,y,2+sin(degtorad(stream))/10,2-sin(degtorad(stream))/5,sin(degtorad(stream/5))*10,c_white,0.1+sin(degtorad(stream))/20)
draw_set_blend_mode(bm_normal)

stream+=1.2
}



