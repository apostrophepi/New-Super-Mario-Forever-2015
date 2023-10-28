if global.pauza=0{
if stworz=0
    {
    stworz=1;
    
    for(i=0;i<ilosc_duchow;i+=1)
        {
        lolo[i]=instance_create(x,y,o_ghost_ring_child)
        if szybkosc_obracania>0 {lolo[i].kierunek=1}
        if szybkosc_obracania<0 {lolo[i].kierunek=-1}
        }
    }
    

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2
    {
    kat+=szybkosc_obracania   
    
    for(i=0;i<ilosc_duchow;i+=1)
        {
        lolo[i].x=x+sin(degtorad(360/ilosc_duchow*i+kat))*odleglosc
        lolo[i].y=y+cos(degtorad(360/ilosc_duchow*i+kat))*odleglosc
        lolo[i].direction=360/ilosc_duchow*i+kat

        }
    }}

