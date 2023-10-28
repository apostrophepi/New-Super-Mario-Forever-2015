draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x+15-kreciolek/2,y+5,1.2,1.2,animowanie/10,c_white,0.4)
draw_set_blend_mode(bm_normal)

draw_sprite_ext(s_tanooki_suit,1,x+15,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)

if global.pauza=0
    {
    if sounder<20 {sounder+=1}
    if sounder=15 {sounder=100;SXMS_SFX_PlayExt(40,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    animowanie+=5
    
    
    if wylatuje=0 && place_meeting(x,y,obj_wall) {y-=1}
    if wylatuje=0 && !place_meeting(x,y,obj_wall) {wylatuje=1;instance_create(x,y,o_bonus_ring_effect)}
    
    if sekwencja=0 {kreciolek=kreciolek/1.3}
    if wylatuje=1
        {
        skacze+=1
        if skacze>50 && sekwencja=0
            {
            sekwencja=1
            grawitacja=-12
            //y-=20
            skacze=0
            }
            
        if sekwencja=1
            {
            if kierunek=1 && !place_meeting(x+2,y,obj_wall)
                {
                x+=2;if kreciolek>-40 {kreciolek-=4};
                }
            if kierunek=-1 && !place_meeting(x-2,y,obj_wall)
                {
                x-=2;if kreciolek<40 {kreciolek+=4};
                }
            if place_meeting(x+2*kierunek,y,obj_wall)
                {
                kierunek=kierunek*-1
                }
            }
        
        }

    
        if !place_meeting(x,y+1,obj_wall) {sekwencja=1}
        if sekwencja=1
            {
            if grawitacja<12 {grawitacja+=0.5};
            if !place_meeting(x,y+grawitacja,obj_wall) && grawitacja<0 {y+=grawitacja}
            if grawitacja>0 {y+=grawitacja}
            }
        if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
        if sekwencja=2 {for (i=0;i<13;i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0;skacze=0}
        
    
    
    
    
    }


    
    

