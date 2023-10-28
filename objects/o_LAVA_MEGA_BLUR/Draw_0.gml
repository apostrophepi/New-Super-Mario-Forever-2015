if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.8 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_mega_lava_blur,0,x,y,20+sin(degtorad(stream))/30,20-sin(degtorad(stream))/30,sin(degtorad(stream/4))*30,c_white,1+sin(degtorad(stream))/3)
draw_set_blend_mode(bm_normal)
stream+=1
}

