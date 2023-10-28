if global.pauza=0 {
    {   
    x=start_x
    y=start_y
    szybkosc_dodana+=szybkosc
    kat=kat_poczatkowy+szybkosc_dodana
    
    if stworz=0
        {
        stworz=1
        for (i=0;i<dlugosc;i+=1)
            {
            if i<dlugosc-1{
            kolec[i]=instance_create(x,y,o_enemy_wiatrak_kolec_kolec)
            kolec[i].image_xscale=0.5
            kolec[i].image_yscale=0.5}
            
            if i>=dlugosc-1{
            kolec[i]=instance_create(x,y,o_enemy_wiatrak_kolec_kolec)
            kolec[i].image_xscale=1
            kolec[i].image_yscale=1}
            
            }
        }
        
        // obrysowanie wiatraka
    for(i=0;i<dlugosc;i+=1)
        {
        kolec[i].x=start_x+sin(degtorad(kat))*(odleglosc*i)
        kolec[i].y=start_y+cos(degtorad(kat))*(odleglosc*i) 
        kolec[i].image_angle=szybkosc_dodana*2
        
        
        }
        
    
    if point_distance(kolec[dlugosc-1].x,kolec[dlugosc-1].y,obj_mario.x,obj_mario.y)<200
        {
        if dzwiek_bujania>100
            {
            SXMS_SFX_PlayExt(105,kolec[dlugosc-1].x,global.glosnosc_dzwieku,-1,0,0);dzwiek_bujania=0
            }
        
        } else {dzwiek_bujania+=1}
        
        
        
        

    }}




        

