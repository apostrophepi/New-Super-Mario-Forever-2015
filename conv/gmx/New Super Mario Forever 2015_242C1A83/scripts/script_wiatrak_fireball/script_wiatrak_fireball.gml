if global.pauza=0
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
    {
    if stworz=0
        {
        stworz=1;
        for(i=0;i<dlugosc;i+=1)
            {
            lolo[i]=instance_create(x,y,o_enemy_wiatrak_fireball_child)
            }
        }
        
        
    for(i=0;i<dlugosc;i+=1)
        {
        lolo[i].x=start_x+sin(degtorad(kat))*(odleglosc*i)+20
        lolo[i].y=start_y+cos(degtorad(kat))*(odleglosc*i)+20
        }

        
     
        

        
        
        
        
        
        
    x=start_x
    y=start_y
    
    kat+=szybkosc
    }}

