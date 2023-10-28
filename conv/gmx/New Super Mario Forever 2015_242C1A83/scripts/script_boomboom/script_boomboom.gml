if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 && aktywuj=0
    {
    aktywuj=1
    HUD=instance_create(x,y,o_boss_hud)
    }
if instance_exists(o_boss_hud){
HUD.energy=boss_ENERGY}
if aktywuj=1 && global.pauza=0 && w_muszli=0
    {
    // w MUSZLI
    if energy_ma-2>energy || kill=1 {kill=0
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    w_muszli=1;boss_ENERGY-=1;energy_ma=energy;
    if boss_ENERGY>0 {SXMS_SFX_PlayExt(204,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);muszla2=instance_create(x,y,o_boss_boom_shell);  muszla2.kierunek=kierunek;muszla2.father_y=ystart};
    if boss_ENERGY<=0 && completed_boss=0 {obj_mario.sciszaj_muzyke=1; SXMS_C_Stop();SXMS_SFX_PlayExt(203,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    muszla=instance_create(x,y,o_boss_boom_shell2);muszla.key=key}
    x=-10000;y=-10000;

    
    }
    
    // initializacja - ruch w kierunku mario
    if sekwencja=0
        {
        timer+=1
        if timer>50 {sekwencja=1}
        }
    if sekwencja=1
        {
        kierunek=-1
        if instance_exists(obj_mario){
        if obj_mario.x>x {kierunek=1}
        if obj_mario.x<x {kierunek=-1}}
        sekwencja=2
        timer=0
        }
        
        
        //podskok
    if sekwencja=4
        {
        if szybkosc<5 {szybkosc+=0.1}
        x+=szybkosc*kierunek
        if x<__view_get( e__VW.XView, 0 ) {kierunek=1}; if x>__view_get( e__VW.XView, 0 )+800 {kierunek=-1}
        if kierunek=-1 && place_meeting(x+(2+szybkosc)*kierunek,y,obj_wall) {kierunek=1}
        if kierunek=1 && place_meeting(x+(2+szybkosc)*kierunek,y,obj_wall) {kierunek=-1}
        
        timer+=1
        if timer=30 {SXMS_SFX_PlayExt(161,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);iyor=-20;repeat(3){part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke2,1);part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke3,1)}}
        if timer>30 && podskoczyl=0 {iyor+=0.5}
        if !place_meeting(x,y-20,obj_wall) && iyor<0 {y+=iyor;}
        if iyor>=0 && !place_meeting(x,y,obj_wall) {y+=iyor;}
        if iyor>=0 && place_meeting(x,y,obj_wall)
            {
            SXMS_SFX_PlayExt(84,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            repeat(3){part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke2,1);part_particles_create(global.particle_map_sterring,x,y+20,global.part_BOOMBOOM_smoke3,1)}
            repeat(20){part_particles_create(global.particle_map_sterring,x+random(50)-random(50),y+30,global.part_BOOMBOOM_smoke4,1)}
            for (i=0;i<30;i+=1)
                {
                podskoczyl=0
                iyor=0
                sekwencja=2;timer=0
                if place_meeting(x,y,obj_wall) {y-=1}
                if !place_meeting(x,y,obj_wall) {break;break;}
                }
            
            }
        
        }
        
        // chodzi
    if sekwencja=2
        {
        if szybkosc<3 {szybkosc+=0.1}
        if szybkosc>3 {szybkosc=szybkosc/1.05;if random(100)>70 {part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1)}}
        if szybkosc<=18 {stream+=0.1}
        x+=szybkosc*kierunek
        if speeduj=1 {if szybkosc<8 {szybkosc+=0.5}}
        
        
        animacja=1
        if place_meeting(x+szybkosc*kierunek,y,obj_wall) {kierunek=kierunek*-1}; if x<__view_get( e__VW.XView, 0 ) {kierunek=1}; if x>__view_get( e__VW.XView, 0 )+800 {kierunek=-1}
       if random(100)>95 {part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1)}
        timer+=1
        if timer>120-accelerator_akcji {
        if boss_level=0 {
                        timer=0;anim_chowanie=0;rodzeptywalny=0
                        walinio=round(random(1))
                        
                        if walinio=1 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}
                        if walinio=2 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}}
                        
        if boss_level=1 {
                        timer=0;anim_chowanie=0;rodzeptywalny=0
                        walinio=round(random(1))
                        if walinio=0 {sekwencja=9;animacja=9;skok_tytana=0;skok_tytana2=0;skacze_delay=0}
                        if walinio=1 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}
                        if walinio=2 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}}
        if boss_level=2 {
                        timer=0;anim_chowanie=0;rodzeptywalny=0
                        walinio=round(random(2))
                        if walinio=0 {sekwencja=9;animacja=9;skok_tytana=0;skok_tytana2=0;skacze_delay=0}
                        if walinio=1 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}
                        if walinio=2 {sekwencja=5;animacja=5}}
        if boss_level=3 {
                        timer=0;anim_chowanie=0;rodzeptywalny=0
                        walinio=round(random(4))
                        if walinio=0 {sekwencja=9;animacja=9;skok_tytana=0;skok_tytana2=0;skacze_delay=0}
                        if walinio=1 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}
                        if walinio=2 {sekwencja=5;animacja=5}
                        if walinio=3 {sekwencja=6;animacja=6}
                        if walinio=4 {sekwencja=5;animacja=5}
                        } 
        if boss_level=4 {
                        timer=0;anim_chowanie=0;rodzeptywalny=0
                        walinio=round(random(5))
                        if walinio=0 {sekwencja=9;animacja=9;skok_tytana=0;skok_tytana2=0;skacze_delay=0}
                        if walinio=1 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}
                        if walinio=2 {sekwencja=5;animacja=5}
                        if walinio=3 {sekwencja=6;animacja=6}
                        if walinio=4 {sekwencja=5;animacja=5}
                        if walinio=5 {sekwencja=6;animacja=6}
                        }                 
                        
                        /*
                        if walinio=0 {sekwencja=9;animacja=9;skok_tytana=0;skok_tytana2=0;skacze_delay=0}
                        
                        if walinio=1 {sekwencja=8;animacja=8;skok_tytana=0;skok_tytana2=0;skacze_delay=0}
                        
                        if walinio=2 {sekwencja=3;animacja=2;boss_blur_controller.distance=20}
       
                        if walinio=3 {sekwencja=4;animacja=3;boss_blur_controller.distance=3}
                        
                        if walinio=4 {sekwencja=7;animacja=7}
                        if walinio=5 {sekwencja=5;animacja=5}
                        */
                        }
    
        }
        
        
        // skacze
    if sekwencja=3
        {

        x+=szybkosc*kierunek
        if place_meeting(x+szybkosc,y,obj_wall) {kierunek=kierunek*-1}; if x<__view_get( e__VW.XView, 0 ) {kierunek=1}; if x>__view_get( e__VW.XView, 0 )+800 {kierunek=1}
        if szybkosc>0 {szybkosc=szybkosc/1.1;
        }
        
        
        if timer<100 && anim_chowanie<20 {anim_chowanie+=1};
        timer+=1
        if timer>100 && anim_chowanie>0 {anim_chowanie-=1};
        if timer>100 && anim_chowanie<=0 {sekwencja=2;timer=0;rozdeptywalny=1}
        }
        
        // RZUT DWIEMA KULAMI Z KOLCAMI
        if sekwencja=9
            {
            if skok_tytana=0 {SXMS_SFX_PlayExt(82,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);skok_tytana=1;kokoz=instance_create(x-50,y,o_boss_boom_spikeyball);kokoz2=instance_create(x+50,y,o_boss_boom_spikeyball)}
            if skok_tytana=1 {skok_tytana2+=5;kokoz.y=y-skok_tytana2/2;kokoz.x=x-50;kokoz.grawitacja=-5;kokoz2.y=y-skok_tytana2/2;kokoz2.x=x+50;kokoz2.grawitacja=-5;kokoz.dziala=0;kokoz2.dziala=0;}
            if skok_tytana2>150 && skok_tytana=1 {skok_tytana=2;kokoz.x=x-50;kokoz.grawitacja=-5;kokoz2.y=y-skok_tytana2/2;kokoz2.x=x+50;kokoz2.grawitacja=-5}
            if skok_tytana>=2 && skok_tytana<=20 {kokoz.dziala=0;skok_tytana+=1;kokoz.y=y-skok_tytana2/2;kokoz.x=x-50;kokoz.grawitacja=-15;kokoz.szybkosc=2; kokoz.kierunek=kierunek;kokoz.y=y-skok_tytana2/2;}
            if skok_tytana>=2 && skok_tytana<=20 {kokoz2.dziala=0;kokoz2.y=y-skok_tytana2/2;kokoz2.x=x+50;kokoz2.grawitacja=-15;kokoz2.szybkosc=2; kokoz2.kierunek=-kierunek;kokoz2.y=y-skok_tytana2/2;}
            if skok_tytana=20 {SXMS_SFX_PlayExt(160,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);}
            
            if skok_tytana=21 {skok_tytana2=skok_tytana2/1.2;skacze_delay+=1}
            if skacze_delay>450 || (!instance_exists(kokoz) && !instance_exists(kokoz2)) {skacze_delay=0;sekwencja=2}
            
            
            stream+=0.01
            

            }

        // RZUT KULA Z KOLCAMI
        if sekwencja=8
            {
            if skok_tytana=0 {SXMS_SFX_PlayExt(82,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);skok_tytana=1;kokoz=instance_create(x,y,o_boss_boom_spikeyball)}
            if skok_tytana=1 {skok_tytana2+=5;kokoz.y=y-skok_tytana2/2;kokoz.x=x;kokoz.grawitacja=-5}
            if skok_tytana2>150 && skok_tytana=1 {skok_tytana=2;kokoz.y=y-skok_tytana2/2;kokoz.x=x;kokoz.grawitacja=-5}
            if skok_tytana>=2 && skok_tytana<=20 {skok_tytana+=1;kokoz.y=y-skok_tytana2/2;kokoz.x=x;kokoz.grawitacja=-17;kokoz.szybkosc=2; kokoz.kierunek=kierunek}
            if skok_tytana=20 {SXMS_SFX_PlayExt(160,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);}
            if skok_tytana=21 {skok_tytana2=skok_tytana2/1.2;skacze_delay+=1}
            if skacze_delay>450 || !instance_exists(kokoz) {skacze_delay=0;sekwencja=2}
            
            
            stream+=0.01
            }
            
            
        
            // SKACZE 3 RAZY
    if sekwencja<>7 {skacze3razy=3}
    if sekwencja=7
        {
        x+=szybkosc*kierunek
        if place_meeting(x,y,szybkosc*kierunek) {kierunek=kierunek*-1}
        szybkosc=szybkosc/1.1
        stream+=0.01
        
        if szybkosc<=0.5 && skok_tytana2=0 {if skok_tytana<60 {skok_tytana+=2}}
        if skok_tytana2=0 && skok_tytana>=60 && skacze3razy>0 {SXMS_SFX_PlayExt(161,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);skok_tytana2=1;iyor=-20;skok_tytana3=y;boss_blur_controller.distance=20;}
        if skok_tytana2=1
            {
            if skok_tytana>-50 {skok_tytana-=5}
            iyor+=0.5
            y+=iyor
            if y>skok_tytana3 {SXMS_SFX_PlayExt(84,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);boss_blur_controller.distance=20;global.earth_quake=50;skacze3razy-=1;y=skok_tytana3;skok_tytana2=0;iyor=0;skok_tytana=0;lolok=instance_create(x,y,o_boom_boom_fala_uderzeniowa);lolok.kierunek=1;lolok=instance_create(x,y,o_boom_boom_fala_uderzeniowa);lolok.kierunek=-1}
            
            }
        if skacze3razy<=0 {skacze_delay+=1;skok_tytana=skok_tytana/1.1}; if skacze_delay>100 {skacze_delay=0;skacze3razy=3;sekwencja=2}
        
        

        }
        
        
        // SKACZE I WYTWARZA FALE UDERZENIOWA
    if sekwencja=6
        {
        x+=szybkosc*kierunek
        if place_meeting(x,y,szybkosc*kierunek) {kierunek=kierunek*-1}
        szybkosc=szybkosc/1.1
        stream+=0.01
        
        if szybkosc<=0.5 && skok_tytana2=0 {if skok_tytana<60 {skok_tytana+=2}}
        if skok_tytana2=0 && skok_tytana>=60 {SXMS_SFX_PlayExt(161,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);boss_blur_controller.distance=20;skok_tytana2=1;iyor=-20;skok_tytana3=y}
        if skok_tytana2=1
            {
            if skok_tytana>-50 {skok_tytana-=5}
            iyor+=0.5
            y+=iyor
        if y>skok_tytana3 {SXMS_SFX_PlayExt(84,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.earth_quake=20;y=skok_tytana3;skok_tytana2=0;iyor=0;skok_tytana=0;sekwencja=2;lolok=instance_create(x,y,o_boom_boom_fala_uderzeniowa);lolok.kierunek=1;lolok=instance_create(x,y,o_boom_boom_fala_uderzeniowa);lolok.kierunek=-1}
            }
        

        }
        
        
        
            
        
        // UDERZA
    if sekwencja<>5 {sampel1=0;sampel2=14}
    if sekwencja=5
        {
        x+=szybkosc*kierunek
        if place_meeting(x+(szybkosc+1)*kierunek,y,obj_wall) {kierunek=kierunek*-1}; if x<__view_get( e__VW.XView, 0 ) {kierunek=1}; if x>__view_get( e__VW.XView, 0 )+800 {kierunek=-1}
        if szybkosc>0 && uderza=0 {szybkosc=szybkosc/1.1;}
        if (obracanie_reka3<=-2000 || obracanie_reka<=-2000) && uderza=0 {SXMS_SFX_PlayExt(163,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.earth_quake=20;repeat(10){part_particles_create(global.particle_map_sterring,x+random(100)-random(100),y+30,global.part_BOOMBOOM_smoke,1)};uderza=1; szybkosc=30;obracanie_reka2=0;obracanie_rek=0;obracanie_reka3=0;ene=instance_create(x,y,o_boos_boom_killermarker)}
        if uderza=1 {        
            if szybkosc>5 {ene.x=x+100*kierunek;ene.y=y;};
            if szybkosc<=5 {with(ene){instance_destroy()}}
            szybkosc=szybkosc/1.1 
            obracanie_reka=50;obracanie_reka3=50; 
            if szybkosc<=0.1{sekwencja=2;uderza=0;}}
        
        if animacja=5{
        stream+=0.01
        if kierunek=-1 {obracanie_reka3-=obracanie_reka2;if uderza=0 {sampel1+=1}}
        if kierunek=1 {obracanie_reka-=obracanie_reka2;if uderza=0 {sampel1+=1}}
        if obracanie_reka2<30 {obracanie_reka2+=0.5}
        
        if sampel1>=sampel2 {sampel2-=1;sampel1=0;SXMS_SFX_PlayExt(164,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
        


        }}
        
        
        }
    
if sekwencja=9
    {
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/5,1,90,c_white,0.225)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor,2,90,c_white,0.01)
    
    draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream)+skok_tytana/2,1,1,sin(stream*5)*2/(abs(iyor)+1)+skok_tytana,c_white,1)
    draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream)+skok_tytana/2,-1,1,-cos(stream*5)*2/(abs(iyor)+1)-iyor-skok_tytana,c_white,1)
    
    draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5+skok_tytana/2,1,1,kierunek*szybkosc,c_white,1)
    
    draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5+skok_tytana/2,1,1,sin(stream*4)*20/(abs(iyor)+1)+iyor+iyor+obracanie_reka-skok_tytana*2+skok_tytana2,c_white,1)
    draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5+skok_tytana/2,-1,1,-sin(stream*4)*20/(abs(iyor)+1)-iyor+obracanie_reka3+skok_tytana*2-skok_tytana2,c_white,1)
    
    //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
    }
  
if sekwencja=8
    {
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/5,1,90,c_white,0.225)
    draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor,2,90,c_white,0.01)
    
    draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream)+skok_tytana/2,1,1,sin(stream*5)*2/(abs(iyor)+1)+skok_tytana,c_white,1)
    draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream)+skok_tytana/2,-1,1,-cos(stream*5)*2/(abs(iyor)+1)-iyor-skok_tytana,c_white,1)
    
    draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5+skok_tytana/2,1,1,kierunek*szybkosc,c_white,1)
    
    draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5+skok_tytana/2,1,1,sin(stream*4)*20/(abs(iyor)+1)+iyor+iyor+obracanie_reka-skok_tytana*2+skok_tytana2,c_white,1)
    draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5+skok_tytana/2,-1,1,-sin(stream*4)*20/(abs(iyor)+1)-iyor+obracanie_reka3+skok_tytana*2-skok_tytana2,c_white,1)
    
    //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
    }      
        
        
if sekwencja=7
        {
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/5,1,90,c_white,0.225)
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor,2,90,c_white,0.01)
    
        draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream)+skok_tytana/2,1,1,sin(stream*5)*2/(abs(iyor)+1)+skok_tytana,c_white,1)
        draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream)+skok_tytana/2,-1,1,-cos(stream*5)*2/(abs(iyor)+1)-iyor-skok_tytana,c_white,1)
    
        draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5+skok_tytana/2,1,1,kierunek*szybkosc,c_white,1)
    
        draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5+skok_tytana/2,1,1,sin(stream*4)*20/(abs(iyor)+1)+iyor+iyor+obracanie_reka-skok_tytana*2,c_white,1)
        draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5+skok_tytana/2,-1,1,-sin(stream*4)*20/(abs(iyor)+1)-iyor+obracanie_reka3+skok_tytana*2,c_white,1)
    
        //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
        }
        
        
        
        
    if sekwencja=6
        {
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor/5,1,90,c_white,0.225)
        draw_sprite_ext(s_spikey_10,0,x,y+10+dodo+sin(stream),-iyor,2,90,c_white,0.01)
    
        draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream)+skok_tytana/2,1,1,sin(stream*5)*2/(abs(iyor)+1)+skok_tytana,c_white,1)
        draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream)+skok_tytana/2,-1,1,-cos(stream*5)*2/(abs(iyor)+1)-iyor-skok_tytana,c_white,1)
    
        draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5+skok_tytana/2,1,1,kierunek*szybkosc,c_white,1)
    
        draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5+skok_tytana/2,1,1,sin(stream*4)*20/(abs(iyor)+1)+iyor+iyor+obracanie_reka-skok_tytana*2,c_white,1)
        draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5+skok_tytana/2,-1,1,-sin(stream*4)*20/(abs(iyor)+1)-iyor+obracanie_reka3+skok_tytana*2,c_white,1)
    
        //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
            
            }
        
        
            
    if animacja=5
        {
        draw_sprite_ext(s_spikey_10,0,x+10,y+30+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
        draw_sprite_ext(s_spikey_10,0,x+10,y+30+dodo+sin(stream),-iyor/5,3,90,c_white,0.225)
        draw_sprite_ext(s_spikey_10,0,x+10,y+30+dodo+sin(stream),-iyor/2,3,90,c_white,0.01)
    
        draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream),1,1,sin(stream*5)*2/(abs(iyor)+1),c_white,1)
        draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream),-1,1,-cos(stream*5)*2/(abs(iyor)+1)-iyor,c_white,1)
    
        draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5,1,1,kierunek*szybkosc,c_white,1)
    
        draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5,1,1,sin(stream*4)*20/(abs(iyor)+1)+iyor+iyor+obracanie_reka,c_white,1)
        draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5,-1,1,-sin(stream*4)*20/(abs(iyor)+1)-iyor+obracanie_reka3,c_white,1)
    
        //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
        if uderza=1 {draw_sprite_ext(s_boom_boom_6,0,x+120*kierunek,y,image_xscale*kierunek*4,2,0,c_white,szybkosc/10)}
        if uderza=1 {draw_sprite_ext(s_boom_boom_6,0,x+120*kierunek,y,image_xscale*kierunek*4,1,0,c_white,szybkosc/10)}
        if uderza=1 {draw_sprite_ext(s_boom_boom_6,0,x+120*kierunek,y,image_xscale*kierunek*2,1,0,c_white,szybkosc/10)}
        if uderza=1 {draw_sprite_ext(s_boom_boom_6,0,x+120*kierunek,y,image_xscale*kierunek,random(1),0,c_white,szybkosc/10)}
        if uderza=1 {draw_sprite_ext(s_boom_boom_6,0,x+120*kierunek,y,image_xscale*kierunek*2,random(2),0,c_white,szybkosc/10)}
        }
    
        // idzie i skacze
    if animacja=3{
    dodo=-10
    stream+=0.15
    
    draw_sprite_ext(s_spikey_10,0,x+10,y+30+dodo+sin(stream),-iyor/8,2,90,c_white,0.35)
    draw_sprite_ext(s_spikey_10,0,x+10,y+30+dodo+sin(stream),-iyor/5,3,90,c_white,0.225)
    draw_sprite_ext(s_spikey_10,0,x+10,y+30+dodo+sin(stream),-iyor/2,3,90,c_white,0.01)
    
    draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream),1,1,sin(stream*5)*20/(abs(iyor)+1)+iyor,c_white,1)
    draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream),-1,1,-cos(stream*5)*20/(abs(iyor)+1)-iyor,c_white,1)
    
    draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5,1,1,kierunek*szybkosc,c_white,1)
    
    draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5,1,1,sin(stream*4)*20/(abs(iyor)+1)+iyor,c_white,1)
    draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5,-1,1,-sin(stream*4)*20/(abs(iyor)+1)-iyor,c_white,1)
    
    //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
    }
    
    
    
    // chowa sie pod pancerzem
    if animacja<>2 {rozdeptywalny=1}
    if animacja=2{
    rozdeptywalny=0
    dodo=-10
    //stream+=0.1
    
    draw_sprite_ext(s_boom_boom_5,0,x,y+dodo+sin(stream)*5-anim_chowanie+10,1,1,90,c_white,1)
    draw_sprite_ext(s_boom_boom_5,0,x+anim_chowanie,y+dodo+sin(stream)*5-anim_chowanie+10,1,1,45,c_white,1)
    draw_sprite_ext(s_boom_boom_5,0,x-anim_chowanie,y+dodo+sin(stream)*5-anim_chowanie+10,1,1,45+90,c_white,1)
    draw_sprite_ext(s_boom_boom_5,0,x-anim_chowanie*1.2,y+dodo+sin(stream)*5+10,1,1,45+90+22,c_white,1)
    draw_sprite_ext(s_boom_boom_5,0,x+anim_chowanie*1.2,y+dodo+sin(stream)*5+10,1,1,45-22,c_white,1)
    
    draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream),1,1,sin(stream*5)*2,c_white,1)
    draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream),-1,1,-cos(stream*5)*2,c_white,1)
    
    draw_sprite_ext(s_boom_boom_3,0,x+30-anim_chowanie,y+dodo+sin(stream)*5,1,1,sin(stream*4)*20,c_white,1)
    draw_sprite_ext(s_boom_boom_3,0,x-30+anim_chowanie,y+dodo+sin(stream)*5,-1,1,-sin(stream*4)*20,c_white,1)
    draw_sprite_ext(s_boom_boom_4,0,x,y+dodo+sin(stream)*5+anim_chowanie,1,1,kierunek*szybkosc,c_white,1)
    
    //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
    }
    
    
    // idzie
    if animacja=1{
    dodo=-10
    
    draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream),1,1,sin(stream*5)*20,c_white,1)
    draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream),-1,1,-cos(stream*5)*20,c_white,1)
    
    draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5,1,1,kierunek*szybkosc,c_white,1)
    
    draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5,1,1,sin(stream*4)*20,c_white,1)
    draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5,-1,1,-sin(stream*4)*20,c_white,1)
    
    //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
    }
    
    
    // odpoczywa
    if animacja=0{
    dodo=-10
    stream+=0.1
    draw_sprite_ext(s_boom_boom_2,0,x+10,y+30+dodo+sin(stream),1,1,sin(stream)*5,c_white,1)
    draw_sprite_ext(s_boom_boom_2,0,x-10,y+30+dodo+sin(stream),-1,1,-sin(stream)*5,c_white,1)
    
    draw_sprite_ext(s_boom_boom_1,0,x,y+dodo+sin(stream)*5,1,1,kierunek*szybkosc,c_white,1)
    
    draw_sprite_ext(s_boom_boom_3,0,x+30,y+dodo+sin(stream)*5,1,1,sin(stream)*5,c_white,1)
    draw_sprite_ext(s_boom_boom_3,0,x-30,y+dodo+sin(stream)*5,-1,1,-sin(stream)*5,c_white,1)
    
    //draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,image_yscale,0,c_white,0.05)
    }
    
    
    
    
    
