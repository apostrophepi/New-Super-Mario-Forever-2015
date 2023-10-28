if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
stream+=0.02

draw_sprite_ext(global.scene_bush_1,0,x,y,1+sin(stream)/30,1-sin(stream)/30,sin(stream)*10+13,c_white,1)
draw_sprite_ext(global.scene_bush_1,0,x,y,-1+sin(stream)/30,1-sin(stream)/30,sin(stream+1)*10-13,c_white,1)
draw_sprite_ext(global.scene_bush_1,0,x,y,-0.5+sin(stream)/30,0.5-sin(stream)/30,sin(stream+2)*10-50,c_white,1)
draw_sprite_ext(global.scene_bush_1,0,x,y,-0.5+sin(stream)/30,0.5-sin(stream)/30,sin(stream*2+3)*10+22,c_white,1)
draw_sprite_ext(global.scene_bush_1,0,x,y,-1+sin(stream)/30,1.2-sin(stream)/30,sin(stream*1.2+4.5)*20+12,c_white,1)
draw_sprite_ext(global.scene_bush_1,0,x,y,1+sin(stream)/30,1.2-sin(stream)/30,sin(stream*1.2+4.5+1)*20+12,c_white,1)
}

