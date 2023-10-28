if global.pauza=0
    {
    image_xscale+=0.05+image_xscale/10
    if image_xscale>5 {image_alpha-=0.2}
    if image_alpha<0 {instance_destroy()}
    }
    
    draw_sprite_ext(s_bullet_ball,0,x,y,image_xscale,image_xscale,0,c_white,image_alpha)

