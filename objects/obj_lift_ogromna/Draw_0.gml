if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.8
{
streamer+=5
for(i=0;i<10;i+=1)
{
draw_sprite_ext(s_wodden_block,0,x+i*40,y+sin(degtorad(streamer+i*50))*5,1,1,0,c_white,1)
}

draw_sprite_ext(s_light_winda,0,x+20,y+sin(degtorad(streamer))*5,1,1,0,c_white,1)


swiatelko.x=x+100
swiatelko.y=y-170+sin(degtorad(streamer))*5





}




