if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
image_angle=point_direction(x,y,fofo.x,fofo.y)-90
draw_sprite_ext(global.tank_engine_1,0,x,y,1,1,image_angle,c_white,1)
depth=fofo.depth-1}

