if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.nippler_plant_1,0,x+20,y,1,-1,sin(degtorad(stream*6))*5,c_white,1)
draw_sprite_ext(global.nippler_plant_2,0,x+23,y+5,1,-1,sin(degtorad(stream*3))*20,c_white,1)
draw_sprite_ext(global.nippler_plant_3,0,x+17,y+5,1,-1,-sin(degtorad(stream*3))*20,c_white,1)

stream+=5
}

