if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

for(i=0;i<4;i+=1)
    {
draw_sprite_ext(global.scene_flower_4,0,x-sin(stream/10)*10,y-40+cos(stream/10),0.75,0.75,stream*10+i*90,c_white,1)}
draw_sprite_ext(global.scene_flower_5,0,x,y,1+sin(stream)/50,1-sin(stream)/50,sin(stream/10)*20,c_white,1)
draw_sprite_ext(global.scene_flower_2,0,x,y+5,0.75,0.75,sin(stream/10)*5,c_white,1)
draw_sprite_ext(global.scene_flower_2,0,x,y+5,-0.75,0.75,sin(stream/10)*5,c_white,1)

stream+=0.077


}

