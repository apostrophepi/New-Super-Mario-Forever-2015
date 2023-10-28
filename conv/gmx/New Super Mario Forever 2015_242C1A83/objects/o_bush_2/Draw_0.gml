if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
stream+=0.02

draw_sprite_ext(global.scene_bush_2,0,x,y+10,0.6+sin(stream*2)/30,0.6-sin(stream*2)/30,sin(stream)*5,c_white,1)
}

