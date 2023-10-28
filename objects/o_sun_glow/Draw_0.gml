if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),1.2+sin(degtorad(stream))/6,1.4-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream))*10,c_white,wafel*sin(degtorad(stream+90)))
draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),2.2+sin(degtorad(stream))/6,1.6-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream))*15+22,c_white,wafel*sin(degtorad(stream+90)))
draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),1.4+sin(degtorad(stream))/6,2.65-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream))*20+55,c_white,wafel*sin(degtorad(stream+90)))
draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),1.2+sin(degtorad(stream))/6,1.6-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream))*20-33,c_white,wafel*sin(degtorad(stream+90)))
draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),2.2+sin(degtorad(stream))/6,1.6-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream))*10-22,c_white,wafel*sin(degtorad(stream+100)))


draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),1.2+sin(degtorad(stream))/6,1.2-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream+90))*10,c_white,wafel*sin(degtorad(stream+180)))
draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),1.2+sin(degtorad(stream))/6,1.2-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream+90))*15+22,c_white,wafel*sin(degtorad(stream+180)))
draw_sprite_ext(global.sun_glow,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act,__view_get( e__VW.YView, 0 ),1.2+sin(degtorad(stream))/6,1.2-sin(degtorad(stream))/6,180+45+sin(degtorad(-stream+90))*20+55,c_white,wafel*sin(degtorad(stream+180)))


koko=point_distance(xstart,ystart,obj_mario.x,obj_mario.y)
wafel=max(((450-(koko))/400),0)




stream+=1
}

