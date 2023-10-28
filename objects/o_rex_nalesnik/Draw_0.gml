draw_sprite_ext(s_rex_4,0,x,y,image_xscale,0.5,0,c_white,1)
if global.pauza=0
    {
    lifetime+=1
    if lifetime>200 {image_alpha=image_alpha/1.03}
    if image_alpha<=0 {instance_destroy()}
    }
    


