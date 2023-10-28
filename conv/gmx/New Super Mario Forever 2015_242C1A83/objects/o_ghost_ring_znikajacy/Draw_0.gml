if global.pauza=0{
if stworz=0
    {
    stworz=1;
    
    for(i=0;i<ilosc_duchow;i+=1)
        {
        lolo[i]=instance_create(x,y,o_ghost_ring_child)
        if szybkosc_obracania>0 {lolo[i].kierunek=1;kierunek=1}
        if szybkosc_obracania<0 {lolo[i].kierunek=-1;kierunek=-1}
        }
        
        
    }
    
    zniknij+=1
    if zniknij>200 && zniknij<300 && alpha>0.1 {alpha-=0.01}
    if zniknij>500 && zniknij<600 && alpha<1 {alpha+=0.01}
    if zniknij>600 {zniknij=0}
    stream+=0.25

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2
    {
    kat+=szybkosc_obracania   

    if zniknij<200 {
    for(i=0;i<ilosc_duchow;i+=1)
        {
        lolo[i].x=x+sin(degtorad(360/ilosc_duchow*i+kat))*odleglosc
        lolo[i].y=y+cos(degtorad(360/ilosc_duchow*i+kat))*odleglosc
        lolo[i].direction=360/ilosc_duchow*i+kat
        stream=lolo[0].stream
        }}
    if zniknij>=200 && point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*2 {
    for(i=0;i<ilosc_duchow;i+=1)
        {
        lolo[i].x=-2000
        lolo[i].y=-2000
        lolo[i].direction=360/ilosc_duchow*i+kat
        
        draw_sprite_ext(s_boo_glow,0,x+sin(degtorad(360/ilosc_duchow*i+kat))*odleglosc+18,y+cos(degtorad(360/ilosc_duchow*i+kat))*odleglosc+18,1,1,0,c_white,alpha)
        draw_sprite_ext(s_shy_boo_2,stream,x+sin(degtorad(360/ilosc_duchow*i+kat))*odleglosc+18,y+cos(degtorad(360/ilosc_duchow*i+kat))*odleglosc+18,kierunek,1,360/ilosc_duchow*i+kat,c_white,alpha)
        
        
        }} 
        
        
        
        


        
        
        
        
        
        
        
    }}

