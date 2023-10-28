if global.pauza=0
    {
    timer+=1
    x=ixor
    y=iyor
    if timer>=500
        {
        instance_create(ixor,iyor,o_enemy_Cheep_Chomp_sterowany)
        instance_destroy()
        }
    
    
    
    }

