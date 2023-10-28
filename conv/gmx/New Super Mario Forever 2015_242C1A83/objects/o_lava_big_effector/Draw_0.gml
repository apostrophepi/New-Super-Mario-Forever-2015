if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.lava_effector,0,x,y,2*global.ekran_size_act/1.3+sin(degtorad(stream))/10,2*global.ekran_size_act/1.3-sin(degtorad(stream))/10,stream,c_white,image_alpha)
draw_set_blend_mode(bm_normal)


stream+=1
}

