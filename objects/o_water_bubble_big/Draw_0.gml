draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_water_bubble,0,x+sin(degtorad(timer*3))*10,y-iyor,1+sin(degtorad(timer*2))/10,1-sin(degtorad(timer*2))/10,0,c_white,image_alpha)
draw_set_blend_mode(bm_normal)

if global.pauza=0
    {
    y-=iyor/2
    timer+=2
    if timer>400 {image_alpha-=0.05}
    if image_alpha<=0 {instance_destroy()}
    if !place_meeting(x,y,o_water_define) {timer+=360}
    }

