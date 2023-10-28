draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x+13,y+10,1.2,1.2,animowanie/10,c_white,0.4)
draw_set_blend_mode(bm_normal)


draw_sprite_ext(global.gfx_bonus_3,1,x+13,y+9,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
draw_sprite_ext(global.gfx_bonus_2,1,x+13+5,y+20,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie)))-abs(sin(degtorad(oczkowanie2))),0,c_white,1)
//draw_sprite_ext(s_bonus_marker,1,x,y,1,1,0,c_white,1)

if global.pauza=0
    {
    if sounder<20 {sounder+=1}
    if sounder=15 {sounder=100;SXMS_SFX_PlayExt(40,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    animowanie+=5
    if oczkowanie<1010 {oczkowanie=random(1000)}
    if oczkowanie>=990 && oczkowanie<=1000 {oczkowanie=10000}
    if oczkowanie>=10000 {oczkowanie+=1;oczkowanie2+=10}
    if oczkowanie2>360 {oczkowanie2=0;oczkowanie=0}
    
    
    if wylatuje=0 && place_meeting(x,y,obj_wall) {y-=1}
    if wylatuje=0 && !place_meeting(x,y,obj_wall) {wylatuje=1;instance_create(x,y,o_bonus_ring_effect)}
    
    if wylatuje=1
                {
                if kierunek=-1
                {
                x-=1
                if place_meeting(x,y,obj_wall) {y-=1}
                if !place_meeting(x,y+1,obj_wall) {y+=1}
                }
        if kierunek=1
            {
            x+=1
            if place_meeting(x,y,obj_wall) {y-=1}
            if !place_meeting(x,y+1,obj_wall) {y+=1}
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
    
    
    
    
    }


    
    

