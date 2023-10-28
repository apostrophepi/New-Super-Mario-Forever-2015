if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*3
    {
    // wlacz sampla na poczatku a potem jak pozycja dojdzie do konca
    if czas>=203700 || timer=0{czas=0
    sampel=SXMS_SFX_PlayExt(320,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku/8,-1,0,0)
    timer=1}

    
    // Mierz czas sampla
    if czas<SXMS_SFX_Position(1,sampel,0)
 {czas=SXMS_SFX_Position(1,sampel,0);
 
 if graj_od_nowa<>czas {graj_od_nowa=czas;graj_od_nowa2=1}
 }
 if graj_od_nowa2>=1 {graj_od_nowa2+=1}
 if graj_od_nowa2>=10 {graj_od_nowa2=0;sampel=SXMS_SFX_PlayExt(320,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku/8,-1,0,0)}
 

    // ustawiaj PANNING
    SXMS_SFX_Pan(sampel,((x-__view_get( e__VW.XView, 0 ))/800)*255)
    
    
    
    
    // zmierz odleglosc obiektow
    koko=point_distance(x,y,obj_mario.x,obj_mario.y)
    
    // graj glosnosc sampla w zaleznosci od odleglosci
    //SXMS_SFX_Volume(sampel,((250-(koko))/200)*255)
    
    SXMS_SFX_VolumeAbsolute(sampel,((850-(koko))/400)*255*global.glosnosc_dzwieku/8)
    
    }
    
    
    
    
    

