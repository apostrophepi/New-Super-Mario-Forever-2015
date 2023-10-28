if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
draw_sprite_ext(global.lava_cloud,0,x,y,1*global.ekran_size_act/1.3+sin(degtorad(stream))/10,1*global.ekran_size_act/1.3-sin(degtorad(stream))/10,0,c_white,image_alpha)


draw_set_blend_mode(bm_add)
draw_sprite_ext(global.lava_cloud2,0,x,y,1.2*global.ekran_size_act/1.3+sin(degtorad(stream))/10,1.2*global.ekran_size_act/1.3-sin(degtorad(stream))/10,0,c_white,image_alpha/2)
draw_sprite_ext(global.lava_cloud2,0,x,y,-1.2*global.ekran_size_act/1.3+sin(degtorad(stream))/10,1.2*global.ekran_size_act/1.3-sin(degtorad(stream))/10,0,c_white,image_alpha/2)
draw_set_blend_mode(bm_normal)
stream+=5

if place_meeting(x,y,obj_mario) || place_meeting(x,y,obj_mario_duch)
    {
    if image_alpha>0.25 {image_alpha-=0.05}
    }
if !place_meeting(x,y,obj_mario) && !place_meeting(x,y,obj_mario_duch)
    {
    if image_alpha<1 {image_alpha+=0.01}
    
    
    }}

