if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x-kreciolek/2,y,1.2,1.2,animowanie/10,c_white,0.1)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(s_happy_star_2,1,x,y,1,1,-abs(sin(degtorad(obracator))*40),c_white,1)
draw_sprite_ext(s_happy_star_2,1,x,y,-1,1,abs(sin(degtorad(obracator))*40),c_white,1)
//draw_sprite_ext(global.power_start_gfx[floor(grafika)],1,x+15,y+50,2+0.1*(sin(degtorad(animowanie))),2-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,0.3)
draw_sprite_ext(s_happy_star,1,x,y,1+nalesnikuj/10+0.1*(sin(degtorad(animowanie))),1-nalesnikuj/10-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)
}



if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.8 {instance_destroy()}    

if global.pauza=0 && (point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || active=1)
    {
    obracator+=4
    active=1
    if y>room_height+100 {instance_destroy()}
    nalesnikuj=nalesnikuj/1.3


grafika+=0.1
if grafika>=7 {grafika=0}

    if sounder<20 {sounder+=1}
    if sounder=15 {sounder=100;SXMS_SFX_PlayExt(40,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    animowanie+=5
    
    
    if wylatuje=0 && place_meeting(x,y,obj_wall) {y-=1}
    if wylatuje=0 && !place_meeting(x,y,obj_wall) {wylatuje=1}
    
    if sekwencja=0 {kreciolek=kreciolek/1.3}
    if wylatuje=1
        {
        skacze+=100
        if skacze>40 && sekwencja=0
            {
            sekwencja=1
            grawitacja=-3-random(3)
            //y-=20
            skacze=0
            }
            
        if sekwencja=1
            {
            if kierunek=1 && !place_meeting(x+4,y,obj_wall)
                {
                x+=szybkator;if kreciolek>-20 {kreciolek-=4};
                }
            if kierunek=-1 && !place_meeting(x-4,y,obj_wall)
                {
                x-=szybkator;if kreciolek<20 {kreciolek+=4};
                }
            if place_meeting(x+4*kierunek,y-8,obj_wall)
                {
                kierunek=kierunek*-1
                }
            }
        
        }

    
        if !place_meeting(x,y+1,obj_wall) {sekwencja=1}
        if sekwencja=1
            {
            if grawitacja<12 {grawitacja+=0.10};
            if !place_meeting(x,y-15,obj_wall) && grawitacja<0 {y+=grawitacja}
            if grawitacja>0 {y+=grawitacja}
            }
        if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2;nalesnikuj=5}
        if sekwencja=2 {for (i=0;i<13;i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0;skacze=0}
        
    
    
    
    
    }


    
    

