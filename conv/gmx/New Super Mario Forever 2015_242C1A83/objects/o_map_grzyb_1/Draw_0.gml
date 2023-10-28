image_xscale=1
image_yscale=1

draw_sprite_ext(s_map_grzyb_2,image_index,x,y,image_xscale+sin(degtorad(timer))*image_xscale/10,image_yscale-sin(degtorad(timer))*image_xscale/10,sin(degtorad(timer))*10+360-120,c_white,0.5)
draw_sprite_ext(s_map_shadow_1,0,x,y,1,0.4,0,c_white,1)
draw_sprite_ext(s_map_grzyb_1,image_index,x,y,image_xscale+sin(degtorad(timer))*image_xscale/10,image_yscale-sin(degtorad(timer))*image_xscale/10,sin(degtorad(timer))*10,c_white,1)
timer+=adder

