if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_lisciong_1,0,x+20,y+45,1,0.75+sin(promien)/5,sin(promien)*10+40,c_white,1)
draw_sprite_ext(global.gfx_lisciong_2,0,x+20,y+45,-1,0.75-sin(promien)/6,sin(promien)*9-40,c_white,1)
draw_sprite_ext(global.gfx_lisciong_3,0,x+20,y+45,-1,0.75-sin(promien)/10,sin(promien)*5-60,c_white,1)

promien+=0.02

} // end of deactivator

