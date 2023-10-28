if global.pauza=0{
    {
    
    if rodzaj=100
        {
        if place_meeting(x,y-2,obj_mario)
            {
            lolo=instance_place(x,y-2,obj_mario)
            if lolo.windonip=id {
            obj_mario.dotykal_windy=10
            // assing X
            with(lolo){if sekwencja=0 && !place_meeting(x-windonip.x+windonip.doceluj_x,y,obj_wall) && x<room_width+20 && x>20 {x+=-windonip.x+windonip.doceluj_x}}
            // assing Y
            with(lolo){
                if sekwencja=0 && !place_meeting(x,y-windonip.y+windonip.doceluj_y,obj_wall) && x<room_width+16 {y+=-windonip.y+windonip.doceluj_y}
                if sekwencja=0 && place_meeting(x,y-windonip.y+windonip.doceluj_y,obj_wall) {sekwencja=1;windonip=0}
                }
            }}
        x=doceluj_x
        y=doceluj_y
        
        
        }
        
        if rodzaj=101
        {
        if place_meeting(x,y-2,obj_mario)
            {
            lolo=instance_place(x,y-2,obj_mario)
            if lolo.windonip=id {
            obj_mario.dotykal_windy=10
            // assing X
            with(lolo){if sekwencja=0 && !place_meeting(x-windonip.x+windonip.doceluj_x,y,obj_wall) && x<room_width+20 && x>20 {x+=-windonip.x+windonip.doceluj_x}}
            // assing Y
            with(lolo){
                if sekwencja=0 && !place_meeting(x,y-windonip.y+windonip.doceluj_y,obj_wall) && x<room_width+16 {y+=-windonip.y+windonip.doceluj_y}
                if sekwencja=0 && place_meeting(x,y-windonip.y+windonip.doceluj_y,obj_wall) {sekwencja=1;windonip=0}
                }
            }}
        x=doceluj_x
        y=doceluj_y
        
        }
        
        
        // bujana POZIOMO-PIONOWO
        // szybkosc=4, litera V
        if rodzaj=0 {
        
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat/4))*2,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat/4))*2}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+sin(degtorad(windonip.kat/2))*5,obj_wall) && x<room_width+16 {y+=sin(degtorad(windonip.kat/2))*5}
            if sekwencja=0 && place_meeting(x,y+sin(degtorad(windonip.kat/2))*5,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat/4))*2
        y+=sin(degtorad(kat/2))*5
        }
        
        
        // krecona do okola (wielkosc_kolka ustawiamy)
        if rodzaj=1 {
        kat+=szybkosc
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat))*windonip.wielkosc_kolka,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat))*windonip.wielkosc_kolka}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+cos(degtorad(windonip.kat))*windonip.wielkosc_kolka,obj_wall) && x<room_width+16 {y+=cos(degtorad(windonip.kat))*windonip.wielkosc_kolka}
            if sekwencja=0 && place_meeting(x,y+cos(degtorad(windonip.kat))*windonip.wielkosc_kolka,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat))*wielkosc_kolka
        y+=cos(degtorad(kat))*wielkosc_kolka
        }
        
        
        // TRĄBA POWIETRZNA - CZYLI DUZO ZYGZAKUJE NA BOKI A DO GORY DO DOLU DALEKO
        if rodzaj=2 {
        kat+=1
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat*5))*5,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat*5))*5}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+cos(degtorad(windonip.kat))*4,obj_wall) && x<room_width+16 {y+=cos(degtorad(windonip.kat))*4}
            if sekwencja=0 && place_meeting(x,y+cos(degtorad(windonip.kat))*4,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat*5))*5
        y+=cos(degtorad(kat))*4
        }
        
        
        
                // WINDA PRZESOWANA W POZIOMIE TYLKO SINUSOIDALNIE (jak_daleko_jedzie tylko ustawiamy)
        if rodzaj=3 {
        kat+=1
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+cos(degtorad(windonip.kat))*0,obj_wall) && x<room_width+16 {y+=cos(degtorad(windonip.kat))*0}
            if sekwencja=0 && place_meeting(x,y+cos(degtorad(windonip.kat))*0,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat))*jak_daleko_jedzie
        y+=cos(degtorad(kat))*0
        }
     
        
                        // WINDA PRZESOWANA W PIONIE (jak_daleko_jedzie tylko ustawiamy)
        if rodzaj=4 {
        kat+=1
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat))*0,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat))*0}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+cos(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) && x<room_width+16 {y+=cos(degtorad(windonip.kat))*windonip.jak_daleko_jedzie}
            if sekwencja=0 && place_meeting(x,y+cos(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat))*0
        y+=cos(degtorad(kat))*jak_daleko_jedzie
        }
        
           
        // WINDA SPADAJACA ("jak_daleko_jedzie" - to szybkosc spadania windy musi byc przynajmniej = 1)
        if rodzaj=5 {
        if kat>0 && kat<90 {kat+=2}
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        if kat=0 {kat=1}
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat))*0,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat))*0}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) && x<room_width+16 {y+=sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie}
            if sekwencja=0 && place_meeting(x,y+sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat))*0
        y+=sin(degtorad(kat))*jak_daleko_jedzie
        }
        
        // WINDA SPADAJACA ale potem wraca na miejsce
        if rodzaj=6 {
        if wyjatek=0{
        if kat>0 && kat<80 {kat+=2}
        if promien>=0 && promien<100 && kat>=80 {promien+=1}
        if promien>=100 {wyjatek=1;jak_daleko_jedzie=-jak_daleko_jedzie}}
        
        if wyjatek=1
            {
            if promien>0 {promien-=1}
            if promien<=0 && kat>0 {kat-=2}
            if promien<=0 && kat<=0 {wyjatek=0;jak_daleko_jedzie=-jak_daleko_jedzie;kat=0;}
            }
        
        
        
        
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        if kat=0 && wyjatek=0 {kat=2}
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat))*0,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat))*0}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) && x<room_width+16 {y+=sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie}
            if sekwencja=0 && place_meeting(x,y+sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat))*0
        y+=sin(degtorad(kat))*jak_daleko_jedzie
        }
        
        // PODJEZDZAJACA WINDA DO GORY (ODWROTNOSC DO SPADANIA)
        if rodzaj=7 {
        if wyjatek=0{
        if kat>0 && kat<80 {kat+=2}
        if promien>=0 && promien<100 && kat>=80 {promien+=1}
        if promien>=100 {wyjatek=1;jak_daleko_jedzie=-jak_daleko_jedzie}}
        
        if wyjatek=1
            {
            if promien>0 {promien-=1}
            if promien<=0 && kat>0 {kat-=2}
            if promien<=0 && kat<=0 {wyjatek=0;jak_daleko_jedzie=-jak_daleko_jedzie;kat=0;}
            }
        
        
        
        
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        if kat=0 && wyjatek=0 {kat=2}
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat+180))*0,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat+180))*0}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+sin(degtorad(windonip.kat+180))*windonip.jak_daleko_jedzie,obj_wall) && x<room_width+16 {y+=sin(degtorad(windonip.kat+180))*windonip.jak_daleko_jedzie}
            if sekwencja=0 && place_meeting(x,y+sin(degtorad(windonip.kat+180))*windonip.jak_daleko_jedzie,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat+180))*0
        y+=sin(degtorad(kat+180))*jak_daleko_jedzie
        }
        
        
                // winda KIERUNKOWA (kat to kierunek, szybkosc to szybkosc windy do ktorej bedzie winda dazyc)
                
        if rodzaj=8 {
        if wyjatek=0 && jak_daleko_jedzie<szybkosc {jak_daleko_jedzie+=0.1}
        if place_meeting(x,y,o_lift_odbijacz_winda_rodzaj_8) && wyjatek=0 {asdasd=instance_place(x,y,o_lift_odbijacz_winda_rodzaj_8);if zapamietaj_id_odbijacza<>asdasd.id {wyjatek=1;nastaw_kierunek=asdasd.kierunek;zapamietaj_id_odbijacza=asdasd.id}}
        if wyjatek=1 && jak_daleko_jedzie>0 {jak_daleko_jedzie=jak_daleko_jedzie/1.08}
        if wyjatek=1 && jak_daleko_jedzie<=0.1 {jak_daleko_jedzie=0;wyjatek=2;kat=nastaw_kierunek}
        if wyjatek=2 && jak_daleko_jedzie<szybkosc {jak_daleko_jedzie+=0.1}
        if wyjatek=2 && !place_meeting(x,y,o_lift_odbijacz_winda_rodzaj_8)  {wyjatek=0}
        
        
        
        if place_meeting(x,y-2,obj_mario)
        {
        lolo=instance_place(x,y-2,obj_mario)
        if lolo.windonip=id {
        obj_mario.dotykal_windy=10
        // assing X
        with(lolo){if sekwencja=0 && !place_meeting(x+sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,y,obj_wall) && x<room_width+20 && x>20 {x+=sin(degtorad(windonip.kat))*windonip.jak_daleko_jedzie}}
        // assing Y
        with(lolo){
            if sekwencja=0 && !place_meeting(x,y+cos(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) && x<room_width+16 {y+=cos(degtorad(windonip.kat))*windonip.jak_daleko_jedzie}
            if sekwencja=0 && place_meeting(x,y+cos(degtorad(windonip.kat))*windonip.jak_daleko_jedzie,obj_wall) {sekwencja=1;windonip=0}
            }
        }}
        
        x+=sin(degtorad(kat))*jak_daleko_jedzie
        y+=cos(degtorad(kat))*jak_daleko_jedzie
        }
        
        
        
        

    }
    
    
    
    
    }
    
    // EXECUTE POZYCJI ANIMACJI
with(obj_mario){
if wisi=0 && wyrywanie<10 {
obj_mario_anim.x=x+16+random(trzesator)/10-random(trzesator)/5
obj_mario_anim.y=y+32+random(trzesator)/10-random(trzesator)/5+biega_po_scianach_cofacz_y-obj_mario_anim.size*40+35}}


