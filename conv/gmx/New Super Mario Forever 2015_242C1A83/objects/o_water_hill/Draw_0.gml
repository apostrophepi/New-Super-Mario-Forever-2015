if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
draw_sprite_ext(s_hill_wodny_2,0,x,y,1,1,sin(degtorad(stream))*5,c_white,1)
draw_sprite_ext(s_hill_wodny_3,0,x+2,y,1+sin(degtorad(stream))/10,1,0,c_white,1)
draw_sprite_ext(s_hill_wodny,0,x,y,1,1,sin(degtorad(stream))*10,c_white,1)

angle=sin(degtorad(stream))*15

oczy.x=x+sin(degtorad(180+angle))*100
oczy.y=y+cos(degtorad(180+angle))*100
stream+=2.5

oczy.depth=depth-5}

