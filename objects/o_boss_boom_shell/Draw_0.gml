

if y<father_y && fathered=0 {fathered=1
for (i=0;i<1000;i+=1)
    {
    if place_meeting(x,y,obj_wall) {y+=10;grawitacja=0}
    }}
    
    
    

if global.pauza=0
    {
    nie_zabijaj_mario+=1
    efekt2=efekt2/1.1;efekt+=0.5
    if dzielnik<10000 && sekwencja<>3 {dzielnik+=0.1+dzielnik/1000}
    if sekwencja=0 
        {
        y+=grawitacja
        if grawitacja<20 {grawitacja+=0.5}
        if place_meeting(x,y,obj_wall) {sekwencja=1;grawitacja=0}
        }
    if sekwencja=1
        {
        timer+=1
        if timer>70 {timer=0;sekwencja=2;podskoki=3}
        
        if petla=0 {petla=1;part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1)
        for (i=0;i<50;i+=1)
            {
            if place_meeting(x,y,obj_wall) {y-=1}
            }}
        nagraj_pozycje_y=y
        }
    if sekwencja=2
        {
        if grawitacja=0 && odbij=0 && podskoki>0 {grawitacja=-15; odbij=1;podskoki-=1;global.earth_quake=20;o_boss_blur_controller.distance=20}
        if grawitacja=0 && odbij=0 && podskoki<=0 {sekwencja=3}
        
        y+=grawitacja
        grawitacja+=2
        if place_meeting(x,y,obj_wall) && nagraj_pozycje_y>=y-100
        
        {grawitacja=0;part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1)     
        for (i=0;i<50;i+=1)
            {
            odbij=0
            if place_meeting(x,y,obj_wall) {y-=1}
            }}
        }
    if sekwencja=3
        {
        x+=szybkosc*kierunek
        if place_meeting(x+(1+szybkosc)*kierunek,y,obj_wall) {kierunek=kierunek*-1}
        if x<__view_get( e__VW.XView, 0 )-300 {kierunek=1}
        if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+300 {kierunek=-1}
        if szybkosc<10 {szybkosc+=0.1}
        obracanie+=-szybkosc*kierunek
        if kierunek=-1 && efekter_lewo<3 {efekter_lewo+=0.1;efekter_prawo=efekter_prawo/1.05}
        if kierunek=1 && efekter_prawo<3 {efekter_prawo+=0.1;efekter_lewo=efekter_lewo/1.05}
        if random(100)>90 {part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1)}
        part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_minismoke,1)
        
        timer_out+=1
        if timer_out>200
            {
            dzielnik=dzielnik/1.1
            if dzielnik<=1 {dzielnik=1
            with(o_boss_boom)
            {
            iyor=0
            anim_podskok=0
            podskoczyl=0
            obracanie_reka=0
            obracanie_reka2=0
            obracanie_reka3=0
            uderza=0

            skok_tytana=0
            skok_tytana2=0
            skok_tytana3=y

            skacze3razy=3
            anim_chowanie=0
            skacze_delay=0}

            o_boss_boom.szybkosc=szybkosc;o_boss_boom.kierunek=kierunek;o_boss_boom.animacja=2;o_boss_boom.timer=0
            o_boss_boom.x=x;o_boss_boom.y=y;instance_destroy();o_boss_boom.w_muszli=0;o_boss_boom.sekwencja=2;if random(10)>5 {o_boss_boom.sekwencja=3}
            with(o_boss_boom) {for(i=0;i<50;i+=1) {if place_meeting(x,y,obj_wall) {y-=1}}}}
            
            
            
            }
        }
    
    
    
    }
    dodo=0
    draw_sprite_ext(s_spikey_10,0,x,y,efekter_prawo,2,0,c_white,0.25)
    draw_sprite_ext(s_spikey_10,0,x,y,efekter_prawo,1,0,c_white,0.25)
    draw_sprite_ext(s_spikey_10,0,x,y,-efekter_lewo,2,0,c_white,0.25)
    draw_sprite_ext(s_spikey_10,0,x,y,-efekter_lewo,1,0,c_white,0.25)
    
    
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-grawitacja/10,2,90,c_white,0.35)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-grawitacja/10,2,90,c_white,0.35)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-grawitacja/15,1,90,c_white,0.225)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-grawitacja,2,90,c_white,0.01)
            
            
    draw_sprite_ext(s_boom_boom_7,0,x,y,1,1,sin(efekt)*efekt2+obracanie,c_white,1)
    draw_sprite_ext(s_boom_boom_6,0,x+80*kierunek,y,kierunek*szybkosc/10,szybkosc/5,0,c_white,szybkosc/10*random(1))
    draw_sprite_ext(s_boom_boom_6,0,x+80*kierunek,y,kierunek*szybkosc/10,szybkosc/5*random(1),0,c_white,szybkosc/10*random(1))
    draw_sprite_ext(s_boom_boom_6,0,x+80*kierunek,y,kierunek*szybkosc/15,szybkosc/5*random(1),0,c_white,szybkosc/10*random(1))
    
    draw_sprite_ext(s_boom_boom_2,0,x+10/dzielnik,y+30/dzielnik+dodo+sin(stream),1,1,sin(stream*5)*20+obracanie,c_white,1/dzielnik)
    draw_sprite_ext(s_boom_boom_2,0,x-10/dzielnik,y+30/dzielnik+dodo+sin(stream),-1,1,-cos(stream*5)*20+obracanie,c_white,1/dzielnik)
    
    draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5,1,1,kierunek*szybkosc+obracanie,c_white,1/dzielnik)
    
    draw_sprite_ext(s_boom_boom_3,0,x+30/dzielnik,y+dodo+sin(stream)*5/dzielnik,1,1,sin(stream*4)*20+obracanie,c_white,1/dzielnik)
    draw_sprite_ext(s_boom_boom_3,0,x-30/dzielnik,y+dodo+sin(stream)*5/dzielnik,-1,1,-sin(stream*4)*20+obracanie,c_white,1/dzielnik)
    
    draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05/dzielnik)
    
    
    
    
    
    
    

