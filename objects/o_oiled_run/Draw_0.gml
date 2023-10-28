draw_sprite_ext(global.gfx_oiled_run,image_index,x,y,image_xscale,image_yscale,0,c_white,image_alpha)
if image_index<20 {image_index+=1}
if image_index>=20 {image_alpha=image_alpha/1.3}
if image_alpha<=0.05 {instance_destroy()}
