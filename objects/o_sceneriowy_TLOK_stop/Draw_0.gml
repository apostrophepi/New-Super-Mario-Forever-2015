if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
x=xstart+sin(degtorad(stream))*40
y=ystart+cos(degtorad(stream))*40

image_angle=point_direction(x,y,fofo.x,fofo.y)-90
draw_sprite_ext(global.tank_engine_2,0,x,y,1,1,image_angle,c_white,1)

stream+=1}

