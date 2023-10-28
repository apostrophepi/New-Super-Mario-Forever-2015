draw_set_blend_mode(bm_add)
draw_sprite_ext(s_underground_leafs,0,x,y,1+sin(degtorad(stream))/20,1-sin(degtorad(stream))/20,sin(degtorad(stream/2))*10,c_white,1)
draw_set_blend_mode(bm_normal)
stream+=1

