if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
if boomboom=1{
draw_sprite_ext(s_boom_boom_zamkowo_mapowy,0,x-chowacz*kierunek/1.5*kierunek2,sin(koko)*10+y-mnoznik*chowacz/2-50,1+sin(koko)/20,1-sin(koko)/20,chowacz/2*kierunek*rownik,c_white,1)
}

if wyglad=0 {draw_sprite_ext(s_map_castle,0,x,y,1+sin(koko)/50+cos(degtorad(efekter2))*efekter1/250,1-sin(koko)/50+sin(degtorad(efekter2))*efekter1/250,0,c_white,1)}
if wyglad=1 {draw_sprite_ext(s_map_castle_2,0,x,y,1+sin(koko)/50+cos(degtorad(efekter2))*efekter1/250,1-sin(koko)/50+sin(degtorad(efekter2))*efekter1/250,0,c_white,1)}


// effecter wchodzenia mario

if efekter1>0 {efekter1=efekter1/1.1;efekter2+=30}

koko+=0.1






if random(1000)>990 && sekwencja=0
    {
    sekwencja=1
    kierunek=100+random(100)
    if kierunek>=100 && kierunek<150 {kierunek=1}
    if kierunek>=150 {kierunek=-1}
    
    kierunek2=100+random(100)
    if kierunek2>=100 && kierunek2<150 {kierunek2=0;mnoznik=2.5;rownik=0}
    if kierunek2>=150 {kierunek2=1;mnoznik=1;rownik=1}
    }
if sekwencja=1 && chowacz<100-wyglad*50
    {
    chowacz+=5
    }
if chowacz>=100-wyglad*50 && random(1000)>990 && sekwencja=1
    {
    sekwencja=2
    }
if sekwencja=2
    {
    chowacz-=5
    if chowacz<=0 {chowacz=0;sekwencja=0}
    }
}

