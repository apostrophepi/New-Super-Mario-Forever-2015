if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
draw_sprite_ext(global.castle_door_2,0,x,y,1,1,0,c_white,image_alpha)
draw_sprite_ext(global.castle_door_1,0,x-40,y-120,1-otwarcie-otwierane,1,otwarcie*5,c_white,image_alpha)
draw_sprite_ext(global.castle_door_1,0,x+40,y-120,-1+otwarcie+otwierane,1,-otwarcie*5,c_white,image_alpha)

otwarcie=otwarcie/1.02
if otwarcie<=0.1 {image_alpha-=0.01}
if image_alpha<=0.01 {instance_destroy()}
}

