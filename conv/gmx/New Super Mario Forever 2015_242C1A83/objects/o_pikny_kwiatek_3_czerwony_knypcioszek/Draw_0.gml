if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

for(i=0;i<8;i+=1)
    {
draw_sprite_ext(global.scene_flower_4,0,x-sin(stream/10)*10,y-20+cos(stream/10),0.55,0.55,stream+i*45,c_white,1)}
draw_sprite_ext(global.scene_flower_5,0,x,y,0.6+sin(stream)/50,0.6-sin(stream)/50,sin(stream/10)*20,c_white,1)
draw_sprite_ext(global.scene_flower_2,0,x,y+5,0.55,0.55,sin(stream/10)*5,c_white,1)
draw_sprite_ext(global.scene_flower_2,0,x,y+5,-0.55,0.55,sin(stream/10)*5,c_white,1)

stream+=0.077


}

