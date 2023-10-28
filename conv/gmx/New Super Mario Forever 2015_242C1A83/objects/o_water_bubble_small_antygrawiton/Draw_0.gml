draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_water_bubble,0,x+sin(degtorad(timer))*11,y-iyor,0.25+sin(degtorad(timer*2))/20,0.25-sin(degtorad(timer*2))/20,0,c_white,image_alpha)
draw_set_blend_mode(bm_normal)

if global.pauza=0
    {
    y+=iyor/3
    timer+=3
    if timer>200 {image_alpha-=0.05}
    if image_alpha<=0 {instance_destroy()}
    if !place_meeting(x,y,o_water_define) {timer+=360}
    }

