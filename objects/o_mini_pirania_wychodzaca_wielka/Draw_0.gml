if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 
    {
    timer+=1
    if sekwencja=0 && timer>40 {timer=0;sekwencja=1}
    if sekwencja=1 && poszedl<dlugosc*40 {poszedl+=1;timer=0}
    if sekwencja=1 && poszedl>=dlugosc*40 && timer>60 {timer=0;sekwencja=2}
    if sekwencja=2 && poszedl>0 {poszedl-=1; timer=0}
    if sekwencja=2 && poszedl<=0 && timer>60 {sekwencja=0}
    
    if energy<=0 {kill=10}
    

 
    // animacja
    anim+=10

    
    
if x<__view_get( e__VW.XView, 0 )+840+poszedl && x>__view_get( e__VW.XView, 0 )-80-poszedl && y>__view_get( e__VW.YView, 0 )-80-poszedl && y<__view_get( e__VW.YView, 0 )+640+poszedl{  
for(i=0;i<ceil(poszedl/40);i+=1)
    {
    draw_sprite_ext(s_pirania_4,anim_losowacz,x+sin(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),y+cos(degtorad(kierunek_wychodzenia+180))*(poszedl-i*40),1,1,kierunek_wychodzenia,c_white,1)  
    }
    
draw_sprite_ext(s_pirania_1,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1,1,kierunek_wychodzenia+sin(degtorad(anim+180))*20-20,c_white,1)
draw_sprite_ext(s_pirania_2,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1,1,kierunek_wychodzenia-sin(degtorad(anim+180))*20+20,c_white,1) 
draw_sprite_ext(s_pirania_3,0,x+sin(degtorad(kierunek_wychodzenia+180))*poszedl,y+cos(degtorad(kierunek_wychodzenia+180))*poszedl,1,1,kierunek_wychodzenia,c_white,1)  

image_yscale=1+poszedl/40
image_angle=kierunek_wychodzenia+180}


}

