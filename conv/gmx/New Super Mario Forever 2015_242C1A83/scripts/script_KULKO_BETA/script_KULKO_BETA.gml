if global.algorytm_KULKA=1 {
fifiKULKO=0
    //

        
        
    
    
    if place_meeting(x,y+10,o_WALEC_1)
        {
        if fifiKULKO=0 {fifiKULKO=instance_place(x,y+10,o_WALEC_1)}
        }
    if place_meeting(x+10,y,o_WALEC_1)
        {
        if fifiKULKO=0 {fifiKULKO=instance_place(x+10,y,o_WALEC_1)}
        }
    if place_meeting(x-10,y,o_WALEC_1)
        {
        if fifiKULKO=0 {fifiKULKO=instance_place(x-10,y,o_WALEC_1)}
        }

           
        
        
         
    
    if fifiKULKO<>0
        {
        
        odleglosc=point_distance(x,y,fifiKULKO.x,fifiKULKO.y)
        kierunek=point_direction(x,y,fifiKULKO.x,fifiKULKO.y)+90
        
        
        x+=sin(degtorad(kierunek))*odleglosc-sin(degtorad(kierunek+fifiKULKO.szybkoscXXX))*odleglosc
        y+=cos(degtorad(kierunek))*odleglosc-cos(degtorad(kierunek+fifiKULKO.szybkoscXXX))*odleglosc
        
        // POPRAW POZYCJE PO RUSZENIU MARIO
        
        
        for(i=0;i<20;i+=1)
            {
            if !place_meeting(x-i+4,y-2,o_WALEC_1) {lewoKULKO=i;break}
            }
        for(i=0;i<20;i+=1)
            {
            if !place_meeting(x+i-4,y-2,o_WALEC_1) {prawoKULKO=i;break}
            }
        
        for(i=0;i<20;i+=1)
            {
            if !place_meeting(x,y-i-2,o_WALEC_1) {goraKULKO=i;break}
            }
        for(i=0;i<20;i+=1)
            {
            if !place_meeting(x,y+i-2,o_WALEC_1) {dolKULKO=i;break}
            }
        if lewoKULKO<prawoKULKO {x+=prawoKULKO}
        if lewoKULKO>prawoKULKO {x-=lewoKULKO}
        
        if goraKULKO<dolKULKO {y+=dolKULKO}
        if goraKULKO>dolKULKO {y-=goraKULKO}
        
        }
        
        // popraw pozycje gdy moze juz nie dotykac kulka
        
        
        if fifiKULKO && !place_meeting(x,y+1,o_WALEC_1) {y+=1}
        if fifiKULKO && !place_meeting(x,y+1,o_WALEC_1) {y+=1}
        if fifiKULKO && !place_meeting(x,y+1,o_WALEC_1) {y+=1}
        if fifiKULKO && !place_meeting(x,y+1,o_WALEC_1) {y+=1}
        
        
        
        
        
        
        
        }
        
        
        
        
    

