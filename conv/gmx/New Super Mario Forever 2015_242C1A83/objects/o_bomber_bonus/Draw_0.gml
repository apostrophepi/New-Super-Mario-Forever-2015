draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,-kreciolek/8+x+15,y+5,1.2,1.2,animowanie/10,c_white,0.4)
draw_set_blend_mode(bm_normal)

draw_sprite_ext(s_bomber_bonus,1,x+15,y+10,1+0.0.5*(sin(degtorad(animowanie))),1-0.05*(sin(degtorad(animowanie))),kreciolek,c_white,1)


if global.pauza=0
    {
    if sounder<20 {sounder+=1}
    if sounder=15 {sounder=100;SXMS_SFX_PlayExt(40,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    
    animowanie+=4
    
    
    if wylatuje=0 && place_meeting(x,y,obj_wall) {y-=1}
    if wylatuje=0 && !place_meeting(x,y,obj_wall) {wylatuje=1;instance_create(x,y,o_bonus_ring_effect)}
    
    if wylatuje=1
                {
                x+=sin(degtorad(ixor))/10
                ixor+=2
                kreciolek-=sin(degtorad(ixor))/2
                }
 
    
        if place_meeting(x,y,obj_wall) || place_meeting(x,y,obj_wall)
            {
            kierunek=kierunek*-1
            }
    
    
        if !place_meeting(x,y+1,obj_wall) {sekwencja=1}
        if sekwencja=1 {if grawitacja<12 {grawitacja+=0.5};y+=grawitacja}
        if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
        if sekwencja=2 {for (i=0;i<9;i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0}
        }
    
    
    
    



    
    

