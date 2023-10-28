draw_sprite_ext(global.ring_bonus,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha)

if global.pauza=0
    {
    image_xscale+=0.1
    image_yscale+=0.1
    image_alpha=image_alpha/1.1
    if image_alpha<=0 {instance_destroy()}
    }

