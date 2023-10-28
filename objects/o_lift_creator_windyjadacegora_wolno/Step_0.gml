if global.pauza=0
    {
    timer+=1
    if timer>300
        {
        timer=0
        winda=instance_create(x,y,obj_lift_duza)
        winda.kat=180
        winda.rodzaj=8
        winda.szybkosc=0.1


        winda.wielkosc_kolka=1 // dla windy obracanej RODZAJ=1
        winda.jak_daleko_jedzie=1 // dla windy pionowej

        winda.jaki_wyglad_windy=0
        
        
        
        }
    
    
    
    }

