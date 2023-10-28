if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 
    {
    poszedl=dlugosc*40
    
    

 
    // animacja
    anim+=10

    
    
if x<__view_get( e__VW.XView, 0 )+840+poszedl && x>__view_get( e__VW.XView, 0 )-80-poszedl && y>__view_get( e__VW.YView, 0 )-80-poszedl && y<__view_get( e__VW.YView, 0 )+640+poszedl{  
for(i=0;i<ceil(poszedl/20);i+=1)
    {
    draw_sprite_ext(s_pirania_4,anim_losowacz,x+sin(degtorad(kierunek_wychodzenia+180))*(poszedl-i*20),y+cos(degtorad(kierunek_wychodzenia+180))*(poszedl-i*20),1/2,1/2,kierunek_wychodzenia,c_white,1)  
    }
    
draw_sprite_ext(s_pirania_1,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1/2,1/2,kierunek_wychodzenia+sin(degtorad(anim+180))*20-20+point_direction(x,y,o_map_player_1.x,o_map_player_1.y)-90,c_white,1)
draw_sprite_ext(s_pirania_2,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1/2,1/2,kierunek_wychodzenia-sin(degtorad(anim+180))*20+20+point_direction(x,y,o_map_player_1.x,o_map_player_1.y)-90,c_white,1) 
draw_sprite_ext(s_pirania_3,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1/2,1/2,kierunek_wychodzenia+point_direction(x,y,o_map_player_1.x,o_map_player_1.y)-90,c_white,1)  

image_yscale=1+poszedl/40
image_angle=kierunek_wychodzenia+180}


}

