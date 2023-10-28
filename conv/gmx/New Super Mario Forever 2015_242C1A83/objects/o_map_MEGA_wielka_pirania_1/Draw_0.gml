if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4
    {

    poszedl=dlugosc*40
 
    // animacja
    anim+=1

    
    
if x<__view_get( e__VW.XView, 0 )+840+poszedl && x>__view_get( e__VW.XView, 0 )-80-poszedl && y>__view_get( e__VW.YView, 0 )-80-poszedl && y<__view_get( e__VW.YView, 0 )+640+poszedl{  

image_yscale=1+poszedl/40
image_angle=kierunek_wychodzenia+180}

for(i=0;i<ceil(poszedl/40);i+=1)
    {
    draw_sprite_ext(s_pirania_6,i,x+sin(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),y+cos(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),0.9,1,kierunek_wychodzenia,c_white,1)  
    }
 
kolorek=make_color_rgb(255,255,255)    
draw_sprite_ext(s_pirania_5,0,sin(degtorad(kierunek+180))*5+x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,cos(degtorad(kierunek+180))*5+y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1,1,kierunek_wychodzenia+sin(degtorad(anim+180))*20-20+kierunek-90-kierunek_wychodzenia+20+point_direction(x,y-i*40,o_map_player_1.x,o_map_player_1.y)+20,kolorek,1)
draw_sprite_ext(s_pirania_5,0,sin(degtorad(kierunek))*5+x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,cos(degtorad(kierunek))*5+y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,-1,1,kierunek_wychodzenia-sin(degtorad(anim+180))*20+20+kierunek-90-kierunek_wychodzenia-20+point_direction(x,y-i*40,o_map_player_1.x,o_map_player_1.y)-20,kolorek,1) 

draw_sprite_ext(s_map_shadow_1,0,x,y,3,2,0,c_white,1)

}

