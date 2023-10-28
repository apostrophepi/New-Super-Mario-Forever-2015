draw_sprite_ext(global.wall_jump_bash,0,x,y,image_xscale/2.5,image_yscale/2.5,0,c_white,image_alpha)
if global.pauza=0
    {
    image_xscale=image_xscale/1.08
    image_yscale=image_yscale/1.08
    image_alpha=image_alpha/1.08
    if image_alpha<=0.01 {instance_destroy()}
    }

