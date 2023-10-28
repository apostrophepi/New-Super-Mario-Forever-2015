draw_sprite_ext(s_boo_glow,0,x,y,image_xscale,image_xscale,0,c_white,image_xscale)

image_xscale=image_xscale/1.3
if image_xscale<=0.05 {instance_destroy()}

