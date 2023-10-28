draw_set_color(c_black)
draw_set_alpha(1)

x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2
y=__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2



draw_sprite_ext(global.blanker_1,0,x,y,size,size,0,c_white,1)


draw_rectangle(x-size*100,__view_get( e__VW.YView, 0 ),x+size*100,y-size*100,0)
draw_rectangle(x+size*100-1,__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),x-size*100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
draw_rectangle(x-size*100,y+size*100-2,x+size*100,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)

size=size/(1.03+uszybszacz)
uszybszacz+=0.00025

