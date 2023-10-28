if global.pauza=0
{
lifetime+=1
if lifetime>2 {image_alpha-=0.05;image_xscale-=0.1;image_yscale-=0.1}
if image_alpha<=0 {instance_destroy()}

}


draw_sprite_ext(s_fireball_boom_2,0,x,y,image_xscale,image_yscale,randomer,c_white,image_alpha/1.2)
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_fireball_boom,0,x,y,image_xscale,image_yscale,0,c_white,image_alpha/1.2)
draw_set_blend_mode(bm_normal)

