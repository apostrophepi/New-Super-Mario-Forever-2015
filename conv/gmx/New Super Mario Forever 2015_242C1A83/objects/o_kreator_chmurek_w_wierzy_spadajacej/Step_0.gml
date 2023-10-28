if global.pauza=0
    {
    if obj_mario.y>1000 && obj_mario.sekwencja=1 && obj_mario.y<room_height-1000 && obj_mario.grawitacja>10
        {
        if random(100)>75 {instance_create(x+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+100,o_random_static_cloud)}
        
        
        }
    
    
    
    
    }

