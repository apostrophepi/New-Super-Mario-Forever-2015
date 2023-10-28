draw_set_blend_mode(bm_add)
draw_sprite_ext(global.lightning,0,__view_get( e__VW.XView, 0 )+ixor,__view_get( e__VW.YView, 0 )+iyor,image_xscale,image_yscale,image_angle,c_white,stream)
draw_set_blend_mode(bm_normal)


if global.pauza=0{
stream-=0.1
if stream<=0 {instance_destroy()}}

