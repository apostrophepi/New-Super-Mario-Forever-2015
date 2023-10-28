if global.pauza=0 {

// platforma ustawiana, ustalanie odgownie ruszania platformy
if rodzaj=1
    {
    rodzaj=2
    }
if rodzaj=2
    {
    kat2+=bujalnik
    x+=sin(degtorad(kat))*step_x
    y+=cos(degtorad(kat2))*step_y
    
    
    if place_meeting(x,y-5,obj_mario)
        {
            obj_mario.y+=cos(degtorad(kat2))*step_y
            with(obj_mario)
                {
                for (i=0;i<20;i+=1)
                    {
                    if place_meeting(x,y,o_desert_moving_rock_parental) {y-=1}
                    }
                
                }
            
            
            }
        }
        
        
        cien.x=x
        cien.y=y
        cien.depth=depth+10
    }


