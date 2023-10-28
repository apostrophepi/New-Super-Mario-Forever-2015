draw_sprite_ext(s_boo_glow,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha/2)
image_alpha=image_alpha/1.13
image_xscale=image_xscale/1.03
image_yscale=image_yscale/1.03
if image_alpha<=0.01 {instance_destroy()}

