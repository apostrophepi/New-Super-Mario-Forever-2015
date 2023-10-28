if global.pauza=0{

if place_meeting(x,y,obj_mario) {startuj=1}

if startuj=1{
if stworz=0 
    {
    stworz=1;
    
    for(i=0;i<ilosc_duchow;i+=1)
        {
        lolo[i]=instance_create(x,y,o_ghost_ring_child)
        lolo[i].image_alpha=0
        if szybkosc_obracania>0 {lolo[i].kierunek=1}
        if szybkosc_obracania<0 {lolo[i].kierunek=-1}
        }
    }
    

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2
    {
       
    
    for(i=0;i<ilosc_duchow;i+=1)
        {
        lolo[i].x=x+sin(degtorad(320/ilosc_duchow*i+kat))*odleglosc
        lolo[i].y=y+cos(degtorad(320/ilosc_duchow*i+kat))*odleglosc
        if timer<300 {lolo[i].image_alpha+=0.01}
        if timer>=500 && lolo[0].image_alpha>0 && odleglosc<=100 {lolo[i].image_alpha-=0.05}
        lolo[i].direction=point_direction(lolo[i].x,lolo[i].y,x,y)
        }
    if timer>=550 && lolo[0].image_alpha<=0
        {
        for(i=0;i<ilosc_duchow;i+=1)
            {
            with(lolo[i]) {instance_destroy()}
            instance_destroy()
            }
        
        
        }
    }
    timer+=1
    if timer<300 {x=obj_mario.x;y=obj_mario.y;kat+=szybkosc_obracania}
    if timer>=400 {if odleglosc>0 {odleglosc-=1}}}
    
    
    
    }

