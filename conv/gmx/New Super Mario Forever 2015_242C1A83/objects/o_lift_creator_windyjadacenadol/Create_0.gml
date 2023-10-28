timer=0

for(i=0;i<10;i+=1)
    {
    timer=0
        winda=instance_create(x,y+i*182,obj_lift_duza)
        winda.kat=0
        winda.rodzaj=8
        winda.szybkosc=0.1


        winda.wielkosc_kolka=1 // dla windy obracanej RODZAJ=1
        winda.jak_daleko_jedzie=1 // dla windy pionowej

        winda.jaki_wyglad_windy=0
    
    
    
    }

