if global.pauza=0
    {
    if place_meeting(x,y,obj_mario)
        {
        if obj_mario.sekwencja=0 {obj_mario.sekwencja=1}
        if obj_mario.sekwencja=1
            {
            obj_mario.szybkosc+=(obj_mario.x-x)/30
            obj_mario.grawitacja-=0.1
            }
        }

    }

