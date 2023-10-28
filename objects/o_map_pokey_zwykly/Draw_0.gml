if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

if place_meeting(x,y,o_map_dbijator_przeciwnikow) {kierunek=kierunek*-1; x=xprevious}
stream+=0.5


x=xstart+sin(degtorad(stream))*60
if stream>0 && stream<90 {kierunek=1}
if stream>90 && stream<270 {kierunek=-1}
if stream>270 {kierunek=1}
if stream>360 {stream=0}




for (i=0;i<5;i+=1)
        {
        if i=0 {draw_sprite_ext(s_map_shadow_1,0,x+sin(degtorad(stream*5+360*(i/(5+1))))*5,y-20*i-10,kierunek,1/2,0,c_white,0.5)}
        draw_sprite_ext(global.gfx_enemy_pokey_1,0,x+sin(degtorad(stream*5+360*(i/(5+1))))*5,y-20*i-20,kierunek/2,1/2,0,c_white,1)
        }
    draw_sprite_ext(global.gfx_enemy_pokey_2,0,x+sin(degtorad(stream*5+i))*5,y-20*5-20,kierunek/2,1/2,sin(degtorad(stream*2+i))*3+360,c_white,1)

    
    

}


