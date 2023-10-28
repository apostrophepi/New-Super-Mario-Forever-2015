if place_meeting(x,y,obj_mario) && timer=0
    {
    timer=1
    }
if global.pauza=0
    {
    if timer=1 {instance_create(x,y,o_superfast_blanker_OUT_and_IN)}
    if timer>=1 {timer+=1}
    if timer>=20 {global.scroll_kind=1100;global.scroll_speed_oddalator=0;instance_destroy()}
    
    
    
    
    }
    
    
        
    
    

