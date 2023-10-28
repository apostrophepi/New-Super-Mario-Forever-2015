if place_meeting(x,y,obj_mario)
    {
    koko=instance_place(x,y,obj_mario)
    if koko.sekwencja=0
        {
        
        
        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id_get( i )
            if iii.object_index=o_winda_przesowana_zamkowa
                {
                iii.rodzaj=3
                iii.kat=90


                if iii.sampluj_machine=1 {iii.sampluj_machine=2}
                }
        }
        
        
        
        
        instance_destroy()
        }
    
    
    
    
    
    }

