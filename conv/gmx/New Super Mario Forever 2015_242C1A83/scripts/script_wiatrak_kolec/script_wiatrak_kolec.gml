if global.pauza=0
 {
    {
    if stworz=0
        {
        stworz=1;
        for(i=0;i<round(dlugosc/7);i+=1)
            {
            lolo[i]=instance_create(x,y,o_enemy_wiatrak_kolec_kolec)
            }
        }
        
        
    for(i=0;i<round(dlugosc/7);i+=1)
        {
        lolo[i].x=start_x+sin(degtorad(kat))*(odleglosc*(i+1)*7)
        lolo[i].y=start_y+cos(degtorad(kat))*(odleglosc*(i+1)*7)
        lolo[i].stream=kat+90
        lolo[i].image_angle=kat*2
        }
        
    x=start_x
    y=start_y
    
    kat+=szybkosc
    
    for (i=0;i<round(dlugosc/7);i+=1)
        {
        if point_distance(lolo[i].x,lolo[i].y,obj_mario.x,obj_mario.y)<200
            {
            if dzwiek_bujania>200
                {
                SXMS_SFX_PlayExt(105,lolo[i].x,global.glosnosc_dzwieku,-1,0,0);dzwiek_bujania=0
                }
        
            } else {dzwiek_bujania+=0.5}
        }
    
    
    

        
        
    }}
    
    
    
    

    for(i=0;i<dlugosc;i+=1)
        {
        draw_sprite_ext(s_chain,i,start_x+sin(degtorad(kat))*(odleglosc*i),start_y+cos(degtorad(kat))*(odleglosc*i),1,1,kat+90,c_white,1)
        }
