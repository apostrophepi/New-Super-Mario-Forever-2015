if global.pauza=0
    {
    timer+=1
    if timer>80
        {
        timer=0
        winda=instance_create(x,y,obj_lift_duza)
        winda.kat=0
        winda.rodzaj=8
        winda.szybkosc=2.5


        winda.wielkosc_kolka=1 // dla windy obracanej RODZAJ=1
        winda.jak_daleko_jedzie=1 // dla windy pionowej

        winda.jaki_wyglad_windy=0
        
        
        
        }
    
    
    
    }

