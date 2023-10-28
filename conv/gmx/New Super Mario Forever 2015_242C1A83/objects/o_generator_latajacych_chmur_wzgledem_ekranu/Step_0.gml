if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu || active=1
    {
    active=1
    timer+=1
    if timer>czestotliwosc
        {
        timer=0
        lolo=instance_create(x,y,o_chmurken_efekt)
        if szybkosc_min>0 {lolo.x=__view_get( e__VW.XView, 0 )-300}
        if szybkosc_min<0 {lolo.x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+300}
        lolo.image_xscale=0.3+random(0.7)
        lolo.szybkosc=szybkosc_min+random(szybkosc_max-szybkosc_min)
        lolo.y=__view_get( e__VW.YView, 0 )+random(1200)-400
        }
    
    
    }

