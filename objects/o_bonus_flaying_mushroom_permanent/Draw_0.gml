draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x+15,y+15,1.2,1.2,animowanie/10,c_white,0.1)
draw_set_blend_mode(bm_normal)

draw_sprite_ext(s_bonus_flaying_mushroom_1,0,x+14,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
draw_sprite_ext(s_bonus_flaying_mushroom_2,0,x+14-(sin(degtorad(animowanie))),y+5+3*(sin(degtorad(animowanie))),abs(sin(animowanie*20)),1,0,c_white,1)


if wylatuje=1
    {
    draw_sprite_ext(s_swing_hit,0,x-30,y-30,1,-1,90,c_white,0.5*sin(degtorad(animowanie*20)))
    draw_sprite_ext(s_swing_hit,0,x+50,y+10,1,-1,-90,c_white,0.5*sin(degtorad(animowanie*20)))
    }

if global.pauza=0
    {
    if sounder<20 {sounder+=1}
    if sounder=15 {sounder=100;SXMS_SFX_PlayExt(40,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    animowanie+=5
    
    
    if wylatuje=0 && place_meeting(x,y,obj_wall) {y-=1}
    if wylatuje=0 && !place_meeting(x,y,obj_wall) {wylatuje=1}
    
    if wylatuje=1
                {
                if kierunek=-1
                {
                x-=1;odbijacz+=1
                y+=sin(degtorad(duchowanie))*4
                duchowanie+=2
                }
        if kierunek=1
            {
            x+=1;odbijacz+=1
                y+=sin(degtorad(duchowanie))*4
                duchowanie+=2
            }
    
        if odbijacz>350
            {
            odbijacz=random(200)*-1
            kierunek=kierunek*-1
            }
    
        }
    
    
    
    
    }


    
    

