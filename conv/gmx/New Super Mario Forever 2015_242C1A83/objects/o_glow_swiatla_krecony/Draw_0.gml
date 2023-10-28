if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
//draw_set_blend_mode(bm_add)
draw_sprite_ext(global.big_glow_sloneczny,0,x,y,2,2,image_angle,c_white,1)
image_angle+=0.5
draw_set_blend_mode(bm_normal)}

