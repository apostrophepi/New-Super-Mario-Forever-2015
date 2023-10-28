if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index,0,x,y,0.5,0.5,0,c_white,0.25)
draw_set_blend_mode(bm_normal)}

