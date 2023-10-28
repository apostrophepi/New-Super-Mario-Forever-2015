if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.water_waves,0,x,y,1,1,0,c_white,abs(sin(degtorad(stream))))
stream+=dodawacz
draw_set_blend_mode(bm_normal)}

