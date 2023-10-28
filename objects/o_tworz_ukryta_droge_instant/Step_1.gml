if sekwencja=0
    {
    timer+=1
    if ilosc_tilesow<=0 {instance_destroy()}
    for (i=0;i<ilosc_tilesow;i+=1)
        {
        ilosc_tilesow-=1
        
        if kierunek=1 {
        odleglosc_x-=1
        randomuj_tiles=round(random(1))
        tile_add(b_map_tiles_1,680+randomuj_tiles*40,200,40,40,x-20+odleglosc_x*40,y-20,1000)
        }
        if kierunek=2 {
        odleglosc_x+=1
        randomuj_tiles=round(random(1))
        tile_add(b_map_tiles_1,680+randomuj_tiles*40,200,40,40,x-20+odleglosc_x*40,y-20,1000)
        }
        if kierunek=3 {
        przesun=0
        randomuj_tiles=round(random(1))
        if randomuj_tiles=0 {przesun=0}
        if randomuj_tiles=1 {przesun=-160}
        
        odleglosc_y-=1
        randomuj_tiles=round(random(1))
        tile_add(b_map_tiles_1,680+przesun,240,40,40,x-20,y-20+odleglosc_y*40,1000)
        }
        
        if kierunek=4 {
        przesun=0
        randomuj_tiles=round(random(1))
        if randomuj_tiles=0 {przesun=0}
        if randomuj_tiles=1 {przesun=-160}
        
        odleglosc_y+=1
        randomuj_tiles=round(random(1))
        tile_add(b_map_tiles_1,680+przesun,240,40,40,x-20,y-20+odleglosc_y*40,1000)
        }
        
        
        
        
        
        
        }
    
    
    }











/*
ilosc_tilesow=0
kierunek=0

sekwencja=0
timer=0

odleglosc=0

/* */
/*  */
