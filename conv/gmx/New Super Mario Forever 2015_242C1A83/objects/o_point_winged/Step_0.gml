if global.pauza=0 && (point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 || active<>0) {
kat+=3
active=1
    {

    
        {
        if y>room_height {y=-32}
        
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        lolo.windonip=id
        with(lolo){if sekwencja=0 && !place_meeting(x,y+2,obj_wall) && x<room_width+16 {y+=sin(degtorad(windonip.kat))*2}}
        with(lolo){if sekwencja=0 && !place_meeting(x+windonip.leci,y,obj_wall) && !place_meeting(x,y+2,obj_wall) && x<room_width+16 {x+=windonip.leci}}}
        y+=sin(degtorad(kat))*2
        x+=leci
        }

    
    }
    
    
    
    
    
    } // koniec pauzy

