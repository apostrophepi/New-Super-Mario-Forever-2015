/*

surface_set_target(b);
screen_redraw();

if(distance>0)
{
draw_radial_blur(distance,global.hitx,global.hity,frames);
}
surface_reset_target();


draw_surface_ext(b,0,0,1,1,0,c_white,1)
if(distance>0)
draw_radial_blur(distance,global.hitx,global.hity,frames)

screen_refresh();


if distance>0 
{
distance-=2
view_wview[0]=800-random(distance)+random(distance)
view_xview[0]=(800-view_wview[0])*0.5
view_hview[0]=600-random(distance)+random(distance)
view_yview[0]=(600-view_hview[0])*0.5
view_angle[0]=random(distance*0.1)-random(distance*0.1)
draw_set_blend_mode(bm_subtract)
draw_circle_color(global.hitx,global.hity,800,c_black,make_color_hsv(0,0,distance),0)
draw_set_blend_mode(bm_normal)
}
else distance=0

global.hitx=mouse_x
global.hity=mouse_y











/* */
/*  */
