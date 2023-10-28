


if global.odejmuj_gwiazdeczki>0 {global.happy_stars-=1; global.odejmuj_gwiazdeczki-=1;o_HUD_tworzony_przez_gracza.dzielnik_timer=100}

script_KULKO_BETA()

// tworz efekt lawy jak mario skusil w lawie

if lavuj>0 {lavuj-=1;if random(100)>20 {part_particles_create(global.particle_sys_zanurkami,x+random(80)-random(80),y+random(40)-random(40),global.part_lava_smoke_leci_do_gory2,3)}}

    
// zabij przeciwnika z gwiazka

    if power_star_time<=0 && star_music_tick_switch=1
        {
        music_tick_level=0; star_music_tick_switch=0
        }
    if power_star_time>0 {
    if place_meeting(x,y,o_enemy_goomba)
        {
        jojo=instance_place(x,y,o_enemy_goomba); with(jojo){kill=1000}
        }
    if place_meeting(x,y,o_enemy_goomba_lezy)
        {
        jojo=instance_place(x,y,o_enemy_goomba_lezy); with(jojo){kill=1000}
        }
    }
script_wylacz_walce()
script_step_sample()
script_przejscie_rurowe()
script_scrooling()
script_backgrounds()
script_obsluga_muzyki()
script_zdobywanie_bonusow()
script_player_wrogowanie()
script_przejscie_rurowe_na_poczatku()
script_efektuj_chmury_po_chodzone()

if global.blokuj_ruch_na_title_screenie=1 {

if sekwencja=1 && grawitacja<0 {y+=grawitacja; testujstepa=0};

if sekwencja=0 && !place_meeting(x,y+1,obj_wall) {sekwencja=1}
if sekwencja=1 {y+=grawitacja;grawitacja+=0.5; if place_meeting(x,y+1,obj_wall) {sekwencja=2}}
if sekwencja=2 {sekwencja=0;grawitacja=0;for (i=0;i<20;i+=1) {if place_meeting(x,y+1,obj_wall) {y-=1}}}
}



if global.blokuj_ruch_na_title_screenie=0 {
if global.pauza=0 || global.pauza>=100 {


// ducher

if global.rodzaj_mario=5 
    {
    if nosi_wyrwane=1 {global.ducher_ladowanie=global.ducher_ladowanie/1.1};
    if global.ducher_wracaj=0 {
    ghost_smoke+=1
    if ghost_smoke>20 {ghost_smoke=0; part_particles_create(global.particle_sys_1,x+random(20),y+random(80),global.part_effect_smoke,1)}

    if keyboard_check(global.ster_fire) && timer_skrot=0 && block_sterring=0  && wyrywanie=0 && obj_mario_anim.schylak>-1 && obj_mario_anim.schylak<1 && click_shot=0 && global.ducher_energy>0 && global.ducher_ladowanie<100
        {
        global.ducher_energy-=4;
        if global.ducher_energy>0 {global.ducher_ladowanie+=5}
        if global.ducher_energy<=0 {global.ducher_ladowanie=global.ducher_ladowanie/3}
        }
    if !keyboard_check(global.ster_fire)
        {
        if global.ducher_energy<1000 {global.ducher_energy+=5;}
        if global.ducher_ladowanie>0 {global.ducher_ladowanie=global.ducher_ladowanie/1.1}
        }
    }
if global.ducher_ladowanie>=100 && global.ducher_zamieniony=0 {global.ducher_zamieniony=1;global.ducher_x=x;global.ducher_y=y; global.ducher_ladowanie=0; SXMS_SFX_PlayExt(316,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,global.czestotliwosc_dzwieku,0,0); instance_create(x+20,y+20,obj_mario_duch_efekt_1); ducher=instance_create(x,y,obj_mario_duch);if obj_mario_anim.size2>0 {ducher.kierunek=1};if obj_mario_anim.size2<0 {ducher.kierunek=-1}}
    
if global.ducher_zamieniony=1
    {
    x=ducher.x+20;
    y=ducher.y+20;
    grawitacja=0;
    sekwencja=0;
    with(obj_mario_anim) {visible=0}
    if global.ducher_energy>0 {global.ducher_energy-=4}
    if (!keyboard_check(global.ster_fire)) || (global.ducher_energy<=0)
        {
        global.ducher_wracaj=1
        }
    
    }
    }
    
    
    


if !instance_exists(obj_mario_duch) {


// wlaczanie triggera

if sekwencja=1 && grawitacja>0
    {
    if place_meeting(x,y,o_triggerus)
        {
        qwer=instance_place(x,y,o_triggerus)
        if qwer.wlacz=0 && y>qwer.y-50 {music_tick=0;zmien=1;qwer.wlacz=1;murek_change_collected=660;grawitacja=-5;SXMS_SFX_PlayExt(110,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)}
        }
    }
        
        

    

if murek_change_collected<=0 {
ilosc_obiektow=instance_count
if zmien=2
    {
    zmien=0;
        for (i=0;i<ilosc_obiektow;i+=1)
            {
            iii=instance_id[i]
            if instance_exists(iii){
            if iii.object_index=o_COIN
                {
                instance_create(iii.x,iii.y,o_point_brick_alone)
                with(iii) {killuj=1}
                }
            if iii.object_index=o_point_brick_alone
                {
                kokos=instance_create(iii.x,iii.y,o_COIN)
                with(iii) {killuj=1}
                }}
                
            }
        
    }


}

if murek_change_collected>0 {
ilosc_obiektow=instance_count
if zmien=1
    {
    zmien=2;
        for (i=0;i<ilosc_obiektow;i+=1)
            {
            iii=instance_id[i]
            if instance_exists(iii){
            if iii.object_index=o_COIN
                {
                instance_create(iii.x,iii.y,o_point_brick_alone)
                with(iii) {killuj=1}
                }
            if iii.object_index=o_point_brick_alone
                {
                kokos=instance_create(iii.x,iii.y,o_COIN)
                with(iii) {killuj=1}
                }}
                
            }
        
    }


}
    
    
    
// czas zdobywania czerwonych monet
if global.coins_red_time>0 {global.coins_red_time-=1}
if global.coins_red_time<=0 {red_coins_collected=0}
// zdobywanie triggera zamieniajacego murki w momety
if murek_change_collected>0 {murek_change_collected-=1}






script_pluskanie()
script_time()




if !keyboard_check(global.ster_fire) && block_sterring=0 {click_shot=0}


global.scroll_resizer=1+szybkosc/20

// tworzenie baniek

if place_meeting(x,y,o_water_define) {banioker=random(1000)}
if banioker>995 {instance_create(x+20,y+32,o_water_bubble_big);banioker=0}
if banioker>900 && banioker<920 {instance_create(x+20,y+32,o_water_bubble_small);banioker=0}

// jezeli jest w wodzie

if place_meeting(x,y,o_water_define) {watered=2.5} else {if watered<>1 {grawitacja-=2};watered=1}

// trzesator - earthquakowy

if global.earth_quake>30 && sekwencja=0 && grawitacja=0 && wisi=0 && wyrywanie=0 && trzesator<=0
    {
    SXMS_SFX_PlayExt(308+round(random(2)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    trzesator=60
    }
if trzesator>0 {trzesator-=1}

// MARIO MOTOREK - WIATRACZKOWY

wiatrtaczek_sampel+=1
if sekwencja=0 {moze_wiatraczkowac=0}
if global.rodzaj_mario=10 && timer_skrot=0 && block_sterring=0 && (keyboard_check(global.ster_fire) && !keyboard_check(global.ster_down) && moze_wiatraczkowac=0) || (keyboard_check(global.ster_jump) && lift_jump=1) && wall_jump_key=0 
    {
    moze_wiatraczkowac=1
    wiatraczkuje_sie=1
    obj_mario_anim.wiatrak_obracator=20
    SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(126,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    wall_jump_key=1;y-=abs(szybkosc)*1 ;sekwencja=1; grawitacja=-14; teststep=0;teststep2=0;steploop=0;steploop2=0;y_chwytania_drazka=-1000; obj_mario_anim.animacja=1;click_shot2=1};
if global.rodzaj_mario=10
    {
    if grawitacja>2 && sekwencja=1
        {
        if keyboard_check(global.ster_fire) && timer_skrot=0
            {
            if wiatrtaczek_sampel>=20 {wiatrtaczek_sampel=0;SXMS_SFX_PlayExt(127,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)}
            obj_mario_anim.wiatrak_obracator=30
            grawitacja=2
            if szybkosc>0 {obj_mario_anim.size2=1}
            if szybkosc<0 {obj_mario_anim.size2=-1}
            }
        
        
        }
    
    
    } 
    
// Mario Racoon

if trzesator=0 {
if global.rodzaj_mario=8 || global.rodzaj_mario=9
    {
    delay_to_statued+=1
    if keyboard_check(global.ster_jump) && keyboard_check(global.ster_down) && obj_mario_anim.ogon_uderzak=0 && click_shot=0 && wyrywanie=0 && nosi_wyrwane=0
        && statued=0 && delay_to_statued>2 && block_sterring=0 && global.rodzaj_mario=9
        {
        SXMS_SFX_PlayExt(40,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
        instance_create(x,y,obj_mario_duch_efekt_1)
        obj_mario_anim.animacja=120;
        statued=1;
        racoon_spadacz=0;
        repeat(10){part_particles_create(global.part_effect_star,x+random(32),y+random(64),global.particle_sys_2,1)}
        }
    if statued=1 && block_sterring=0 && (!keyboard_check(global.ster_jump) || !keyboard_check(global.ster_down))
        {
        SXMS_SFX_PlayExt(41,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
        instance_create(x,y,obj_mario_duch_efekt_1)
        statued=0;
        obj_mario_anim.animacja=2;
        repeat(10){part_particles_create(global.part_effect_star,x+random(32),y+random(64),global.particle_sys_2,1)}
        }
    
    
    
    
    
    
    
    
    
    if keyboard_check(global.ster_fire) && timer_skrot=0 && block_sterring=0  && statued=0 && obj_mario_anim.ogon_uderzak=0 && click_shot=0 && wyrywanie=0 && nosi_wyrwane=0
        {
        SXMS_SFX_PlayExt(30,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
        
        if obj_mario_anim.size2=-1 {obj_mario_anim.ogon_uderzak=360;click_shot=1}
        if obj_mario_anim.size2=1 {obj_mario_anim.ogon_uderzak=-360;click_shot=1}
        }
    
    
    if racoon_spadacz>0  
        {
        if sekwencja=1 && grawitacja>0 {grawitacja=1}; 
        if sekwencja<>1 {racoon_spadacz=0}; 
        if wisi<>0 {racoon_spadacz=0}; 
        racoon_spadacz-=1};
        
        
    if !keyboard_check(global.ster_jump) {click_shot2=0}
    if keyboard_check(global.ster_jump) && block_sterring=0 && click_shot2=0 && sekwencja=1 && grawitacja>0
        {
        SXMS_SFX_PlayExt(31,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
        click_shot2=1;
        racoon_spadacz=20;
        obj_mario_anim.ogon_merda=360*3
        }
        if racoon_spadacz>0 {racoon_dym+=1};
        if racoon_spadacz<=0 {racoon_dym=0};
        if racoon_dym>=6 {racoon_dym=0; lolo=instance_create(x-40*obj_mario_anim.size2,y+80,o_swing_hit);lolo.niezabija=1;lolo.dir=-2; if obj_mario_anim.size2=1{lolo.kierunek=-90}; if obj_mario_anim.size2=-1{lolo.kierunek=-90;lolo.image_yscale=-1};lolo.image_alpha=0.6};
        if sekwencja<>1 {racoon_dym=0; racoon_spadacz=0}
    }
    
    
// Mario Bomber

if global.rodzaj_mario=7 {

if keyboard_check(global.ster_fire) && timer_skrot=0 && block_sterring=0  && nosi_wyrwane=0 && click_shot=0 && sekwencja=0 && grawitacja=0 && wyrywanie=0
    {
    SXMS_SFX_PlayExt(59+round(random(2)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)

    obj_mario_anim.schylak_sek=0
    obj_mario_anim.schylak=0
    click_shot=1
    promien_noszenia=40
    kont_noszenia=360
    nosi_wyrwane=0
    wyrywanie=1
    obj_mario_anim.animacja=20
    }
}



// Mario Hammers

if global.rodzaj_mario=6{
if instance_number(o_mario_hammers)<2{
if keyboard_check(global.ster_fire) && timer_skrot=0 && block_sterring=0  && wyrywanie=0 && obj_mario_anim.schylak>-1 && obj_mario_anim.schylak<1 && click_shot=0

{obj_mario_anim.strzelanie2=200;click_shot=1;
SXMS_SFX_PlayExt(46,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
lolo=instance_create(x+16,y+16,o_mario_hammers)
lolo.ixor=4*obj_mario_anim.size2+szybkosc}}}


// fireballe

if global.rodzaj_mario=2{
if instance_number(o_mario_fireball)<3{
if keyboard_check(global.ster_fire) && timer_skrot=0 && block_sterring=0  && wyrywanie=0 && obj_mario_anim.schylak>-1 && obj_mario_anim.schylak<1 && click_shot=0

{obj_mario_anim.strzelanie2=120;click_shot=1
SXMS_SFX_PlayExt(45,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
lolo=instance_create(x+16,y+16,o_mario_fireball)
lolo.ixor=8*obj_mario_anim.size2}}}


// rzodkiewa
if global.rodzaj_mario=3 {
if instance_number(o_mario_rzodkiewa)<3{
if keyboard_check(global.ster_fire) && timer_skrot=0 && block_sterring=0  && wyrywanie=0 && obj_mario_anim.schylak>-1 && obj_mario_anim.schylak<1 && click_shot=0

{obj_mario_anim.strzelanie2=120;click_shot=1
SXMS_SFX_PlayExt(45,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
lolo=instance_create(x+16,y+16,o_mario_rzodkiewa);if szybkosc>0 {lolo.speeded=szybkosc};if szybkosc<0 {lolo.speeded=-szybkosc}
lolo.grawitacja=-5;lolo.sekwencja=0; if obj_mario_anim.size2>0 {lolo.kierunek=1};if obj_mario_anim.size2<0 {lolo.kierunek=-1};
}}}

// boomer
if global.rodzaj_mario=4 {
if instance_number(o_mario_boomer)<1{
if keyboard_check(global.ster_fire) && timer_skrot=0 && block_sterring=0  && wyrywanie=0 && obj_mario_anim.schylak>-1 && obj_mario_anim.schylak<1 && click_shot=0

{obj_mario_anim.strzelanie2=120;click_shot=1
SXMS_SFX_PlayExt(47,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
lolo=instance_create(x+16,y+16,o_mario_boomer)
lolo.grawitacja=-5;lolo.sekwencja=0; if obj_mario_anim.size2>0 {lolo.kierunek=1};if obj_mario_anim.size2<0 {lolo.kierunek=-1};
}}}







    } // koniec trzesatora







// kopniak w goomba/muszle itp

if place_meeting(x,y,o_enemy_goomba_lezy)
    {
    
    koko=instance_place(x,y,o_enemy_goomba_lezy)
    if koko.kickable=1 && koko.dotknal=0 && koko.kill<>1000 {
    part_particles_create(global.particle_sys_2,x+32,y+32,global.part_effect_kick,1)
    koko.kicked=1
    obj_mario_anim.animacja=18
    obj_mario_anim.kopniak=100
    sekwencja=1
    click_shot2=1
    grawitacja=-8}
    }
// blokada auto-skokow

if !keyboard_check(global.ster_jump) && wall_jump_key=1 {wall_jump_key=0}

// zdobywanie monet


// przyczepnosc

if place_meeting(x,y,o_floor_oiled) && sekwencja=0
    {
    zmieniacz=instance_place(x,y,o_floor_oiled)
    przyczepnosc=zmieniacz.przyczepnosc
    if szybkosc<>0 {oiled_run+=abs(szybkosc)/5}
    }
if !place_meeting(x,y,o_floor_oiled)
    {
    przyczepnosc=1
    }
if oiled_run>8
    {
    oiled_run=0
    if szybkosc>0 {lolo=instance_create(x,y+66,o_oiled_run);lolo.image_xscale=1*min(1,szybkosc/8);lolo.image_yscale=abs(min(1,szybkosc/8))}
    if szybkosc<0 {lolo=instance_create(x,y+66,o_oiled_run);lolo.image_xscale=-1*abs(min(1,szybkosc/8));lolo.image_yscale=abs(min(1,szybkosc/8))}
    }   
    
    
    
    
// chodzenie po chamaku
if trzesator=0 {
if statued=0 {
if (grawitacja>0 || sekwencja=0) && wisi=0 && keyboard_check(global.ster_up) && block_sterring=0  && !instance_place(x,y-15,obj_wall)
    {
    if place_meeting(x,y-50,o_chamak)
        {
        wisi=10
        szybkosc=0
        sekwencja=0
        wall_jump=0
        obj_mario_anim.animacja=15
        }
    }
if wisi=10
    {
    if !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down) && !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right)
        {
        obj_mario_anim.animacja=15
        }
    if keyboard_check(global.ster_up) && place_meeting(x,y-60,o_chamak) && !place_meeting(x,y-2,obj_wall)
        {
        y-=2
        obj_mario_anim.animacja=16
        }
    if keyboard_check(global.ster_down) && place_meeting(x,y+60,o_chamak) && !place_meeting(x,y+2,obj_wall)
        {
        y+=2
        obj_mario_anim.animacja=16
        }
    if keyboard_check(global.ster_left) && place_meeting(x-40,y,o_chamak) && !place_meeting(x-2,y,obj_wall)
        {
        x-=2
        obj_mario_anim.animacja=17
        obj_mario_anim.size2=-1
        }    
    if keyboard_check(global.ster_right) && place_meeting(x+40,y,o_chamak) && !place_meeting(x+2,y,obj_wall)
        {
        x+=2
        obj_mario_anim.animacja=17
        obj_mario_anim.size2=1
        }      
    if keyboard_check(global.ster_jump) && wall_jump_key=0
        {
        SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
        SXMS_SFX_PlayExt(19,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    
        wall_jump_key=1
        grawitacja=-8
        sekwencja=1
        wisi=0
        y_chwytania_drazka=-1000
        obj_mario_anim.animacja=1
        click_shot2=1
        }    
        
        
    obj_mario_anim.x=x+16
    obj_mario_anim.y=y+32+obj_mario.biega_po_scianach_cofacz_y-obj_mario_anim.size*40+35
    }
}
} // koniec trzesatora

// wieszanie na drazku

if trzesator=0 {
if grawitacja>0 && wisi=0 && y>y_chwytania_drazka+35 && statued=0 && global.ducher_zamieniony=0
    {
    with(linor)
        {
        if obj_mario.sekwencja=1 && obj_mario.wall_jump=0 && obj_mario.nosi_wyrwane=0
            {
            for (i=0;i<obj_mario.grawitacja+1;i+=1)
                {
                if place_meeting(x,y+i,o_lina)
                    {
                    koko=instance_place(x,y+i,o_lina)
                        {
                        obj_mario.wisi=2
                        obj_mario.y=koko.y
                        obj_mario_anim.animacja=13
                        obj_mario.grawitacja=0
                        obj_mario_anim.x=x+16
                        obj_mario_anim.y=y+32+obj_mario.biega_po_scianach_cofacz_y-obj_mario_anim.size*40+35
                        obj_mario.szybkosc=0
                        break;
                        }
                    }
                }
            }
        }
    }
    
if wisi=2 && global.ducher_zamieniony=0
    {
    obj_mario_anim.x=x+16
    obj_mario_anim.y=y+32+obj_mario.biega_po_scianach_cofacz_y-obj_mario_anim.size*40+35

           
           
    if !keyboard_check(global.ster_left) && !keyboard_check(global.ster_right) {obj_mario_anim.animacja=13}
    with(linor)
        {
        if keyboard_check(global.ster_left) && place_meeting(x-35,y,o_lina)
            {
            with(obj_mario) {
            if !place_meeting(x-5,y,obj_wall) {
            obj_mario.x-=2
            obj_mario_anim.animacja=14
            obj_mario_anim.size2=-1}}
            }
        if keyboard_check(global.ster_right) && place_meeting(x+35,y,o_lina)
            {
            with(obj_mario) {
            if !place_meeting(x+5,y,obj_wall) {
            obj_mario.x+=2
            obj_mario_anim.animacja=14
            obj_mario_anim.size2=1}}
            }
        }
    if keyboard_check(global.ster_jump) && wall_jump_key=0
        {
        SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
        SXMS_SFX_PlayExt(19,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    
        if keyboard_check(global.ster_left) {obj_mario.szybkosc=-2}
        if keyboard_check(global.ster_right) {obj_mario.szybkosc=2}
        wall_jump_key=1
        grawitacja=-8
        sekwencja=1
        wisi=0
        y_chwytania_drazka=-1000
        obj_mario_anim.animacja=1
        click_shot2=1
        }
    if keyboard_check(global.ster_down)
        {
        SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
        SXMS_SFX_PlayExt(19,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    
        y_chwytania_drazka=y
        wall_jump_key=1
        grawitacja=-8
        sekwencja=1
        click_shot2=1
        wisi=0
        }
    
    
    
    }

// wiszenie na linie

if grawitacja>0 && wisi=0 && statued=0 && global.ducher_zamieniony=0 {
with(linor)
    {
    if !place_meeting(x,y,o_sznurek_child) {obj_mario.ostatnia_lina=0}
    if place_meeting(x,y,o_sznurek_child) && obj_mario.sekwencja=1 && obj_mario.wall_jump=0 && obj_mario.nosi_wyrwane=0
        {
        kiki=instance_place(x,y,o_sznurek_child)
        
        if obj_mario.ostatnia_lina<>kiki.nalezy
        {
        obj_mario.szybkosc=0
        obj_mario.ostatnia_lina=kiki.nalezy
        obj_mario.wisi=1
        (kiki.nalezy).mario=1
        (kiki.nalezy).wisi_na=kiki.numer
        obj_mario.wisi_na=kiki.nalezy}
        }
        
    }}
if wisi=1
    {
    if keyboard_check(global.ster_jump) && wall_jump_key=0 {
    SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(19,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    wall_jump_key=1; y-=abs(szybkosc)*1 ;sekwencja=1; szybkosc=(wisi_na).kat/5;grawitacja=-9; teststep=0;teststep2=0;steploop=0;steploop2=0; wisi=0;(wisi_na).mario=0;(wisi_na).odejmowacz=0;wisi_na=0;obj_mario_anim.animacja=1;break};
    
    if !keyboard_check(global.ster_up) && !keyboard_check(global.ster_down) {obj_mario_anim.animacja=11}
    obj_mario_anim.x=x+16+sin(degtorad(obj_mario_anim.globalny_kat))*32
    obj_mario_anim.y=y+cos(degtorad(obj_mario_anim.globalny_kat))*32
    if keyboard_check(global.ster_right)
        {
        if (wisi_na.kat2>270 || wisi_na.kat2<90) && wisi_na.dzielnik>1 {wisi_na.dzielnik-=abs(sin(degtorad(wisi_na.kat2+90)))/50}
        }
        
    if keyboard_check(global.ster_left)
        {
        if (wisi_na.kat2<270 && wisi_na.kat2>90) && wisi_na.dzielnik>1 {wisi_na.dzielnik-=abs(sin(degtorad(wisi_na.kat2+90)))/50}
        }
    }

    } // koniec trzesatora
// odcinanie algorytmow podczas biegania po scianie lub wiszenia na linie

if wyrywanie<>10 && wyrywanie<>11 && wisi=0 {

// blokada wyrywania przy walljumpingu

if wall_jump=0 && statued=0 && trzesator=0 {

    
    
// wyrywanie krzakow

if place_meeting(x,y,o_wyciagacz) && keyboard_check(global.ster_fire) && block_sterring=0 && nosi_wyrwane=0 && click_shot=0
    {
    SXMS_SFX_PlayExt(58,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario_anim.schylak_sek=0
    obj_mario_anim.schylak=0
    click_shot=1
    promien_noszenia=40
    kont_noszenia=360
    nosi_wyrwane=1
    wyrywanie=1
    obj_mario_anim.animacja=9
    lolo=instance_place(x,y,o_wyciagacz)
    if lolo.coto=0 {noszony=instance_create(x,y+80,o_noszator);noszony.ktory=round(random(4))}
    if lolo.coto=1 {noszony=instance_create(x,y+80,o_noszator);noszony.ktory=7}
    with(lolo) {instance_destroy();part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,5)}
    }

// wyrywanie murkow

if place_meeting(x,y+5,o_point_brick_wyciagacz) && keyboard_check(global.ster_fire) && block_sterring=0 && nosi_wyrwane=0 && click_shot=0 && sekwencja=0
    {
    SXMS_SFX_PlayExt(58,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario_anim.schylak_sek=0
    obj_mario_anim.schylak=0
    click_shot=1
    promien_noszenia=40
    kont_noszenia=360
    nosi_wyrwane=1
    wyrywanie=1
    obj_mario_anim.animacja=9
    lolo=instance_place(x,y+5,o_point_brick_wyciagacz)
    noszony=instance_create(x,y+80,o_noszator);noszony.ktory=6
    with(lolo) {instance_destroy();part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,5)}
    }
    
// wyrywanie murkow lodowych

if place_meeting(x,y+5,o_point_brick_alone2_blue) && keyboard_check(global.ster_fire) && block_sterring=0  && nosi_wyrwane=0 && click_shot=0 && sekwencja=0
    {
    SXMS_SFX_PlayExt(58,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario_anim.schylak_sek=0
    obj_mario_anim.schylak=0
    click_shot=1
    promien_noszenia=40
    kont_noszenia=360
    nosi_wyrwane=1
    wyrywanie=1
    obj_mario_anim.animacja=9
    lolo=instance_place(x,y+5,o_point_brick_alone2_blue)
    noszony=instance_create(x,y+80,o_noszator);noszony.ktory=8
    with(lolo) {instance_destroy();part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,5)}
    }
    
}// koniec blokady wyrywania przy walljumpingu

// jezeli nosi cos
if promien_noszenia>0 {promien_noszenia-=2}
if kont_noszenia>180 && nosi_wyrwane=1 {kont_noszenia-=6;noszony.trzasacz=0.5;noszony.trzasacz2=5}
if kont_noszenia<=180 && nosi_wyrwane=1 {noszony.trzasacz=0;noszony.trzasacz2=0}
if nosi_wyrwane=1
    {
    noszony.x=x+16+(promien_noszenia+32)*sin(degtorad(kont_noszenia))*obj_mario_anim.size2*-1
    noszony.y=y+32+(promien_noszenia+32)*cos(degtorad(kont_noszenia))+obj_mario_anim.schylanie/2-obj_mario_anim.size*30+20
    }
// wyrzocanie

if keyboard_check(global.ster_fire) && block_sterring=0  &&  nosi_wyrwane=1 && click_shot=0 && wyrywanie=0 && trzesator=0
    {
    SXMS_SFX_PlayExt(59+round(random(2)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(62,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    click_shot=1
    koko=instance_create(x,y,o_noszator_shot)
    koko.coto=noszony.ktory
    koko.timer=noszony.timer
    koko.timer2=noszony.timer2
    koko.timer3=noszony.timer3    
    if obj_mario_anim.size2=-1 {koko.ixor=-6+szybkosc;koko.iyor=-2}
    if obj_mario_anim.size2=1 {koko.ixor=6+szybkosc;koko.iyor=-2}
    koko.x=x+16+(promien_noszenia+32)*sin(degtorad(kont_noszenia))*obj_mario_anim.size2*-1
    koko.y=y+32+(promien_noszenia+32)*cos(degtorad(kont_noszenia))+obj_mario_anim.schylanie/2
    obj_mario_anim.niesie=0
    kont_noszenia=360
    
    with(noszony){instance_destroy()}
    nosi_wyrwane=0
    niesie=0
    }
if nosi_wyrwane=0 && obj_mario_anim.animacja<>20
    {
    if obj_mario_anim.schylak<>0 {obj_mario_anim.schylak=obj_mario_anim.schylak/1.3}
    }
// strzelanie 1

// BERSERK OFF
//if keyboard_check(vk_enter) && wyrywanie=0 {berserk=30}
if berserk>=1 && obj_mario_anim.size2=-1 {szybkosc=-8}
if berserk>=1 && obj_mario_anim.size2=1 {szybkosc=8}
if berserk>0 {berserk-=1; obj_mario_anim.animacja=4}

// Animacja

// TU BYLA EXE ANIMACI

if biega_po_scianach_cofacz_y>0 {biega_po_scianach_cofacz_y-=8}
if biega_po_scianach_cofacz_y<0 {biega_po_scianach_cofacz_y+=8}

if wyrywanie=0 && statued=0 {
if (szybkosc<0 && hamuje=0 && sekwencja=0) && (szybkosc<-0.1 || szybkosc>0.1) && schylenie=0 && berserk=0 {obj_mario_anim.size2=-1;if !obj_mario_anim.animacja<>18 {obj_mario_anim.animacja=0};obj_mario_anim.szybkosc_biegu=szybkosc*-4*max(1,przyczepnosc/2)}
if (szybkosc>0 && hamuje=0 && sekwencja=0) && (szybkosc<-0.1 || szybkosc>0.1) && schylenie=0 && berserk=0 {obj_mario_anim.size2=1;if !obj_mario_anim.animacja<>18 {obj_mario_anim.animacja=0};obj_mario_anim.szybkosc_biegu=szybkosc*-4*max(1,przyczepnosc/2)}

if (szybkosc<0 && hamuje=1 && sekwencja=0) && (szybkosc<-0.1 || szybkosc>0.1) && schylenie=0 && berserk=0 {obj_mario_anim.size2=-1;obj_mario_anim.animacja=5}
if (szybkosc>0 && hamuje=1 && sekwencja=0) && (szybkosc<-0.1 || szybkosc>0.1) && schylenie=0 && berserk=0 {obj_mario_anim.size2=1;obj_mario_anim.animacja=5}

if szybkosc>=-1 && szybkosc<=1 && sekwencja=0 && schylenie=0 && berserk=0 && o_koniec_etapu.local_global<>10 && o_koniec_etapu.local_global<>1 && o_koniec_etapu.local_global<>10 && o_koniec_etapu.local_global<>1 && o_koniec_etapu.local_global<>11 && o_koniec_etapu.local_global<>2 {obj_mario_anim.animacja=6}
if sekwencja<>0 && schylenie=0 && berserk=0 {if !obj_mario_anim.animacja=18 && o_koniec_etapu.local_global<>10 && o_koniec_etapu.local_global<>1 {obj_mario_anim.animacja=1};obj_mario_anim.jump=sin(degtorad(50-grawitacja*10))*50}

if szybkosc<>0 && obj_mario_anim.animacja=2 {szybkosc=szybkosc/1.05}
if keyboard_check(global.ster_down) && block_sterring=0 && berserk=0 {schylenie=1;obj_mario_anim.animacja=2}
if !keyboard_check(global.ster_down) && schylenie=1 && berserk=0 {obj_mario_anim.animacja=8}
if schylenie=1 && obj_mario_anim.schylanie<=0 {schylenie=0}

if global.rodzaj_mario=0 {
image_index=1;kierunek_wychodzenia_murkowego=0}

if global.rodzaj_mario<>0 && sekwencja=0 {
if obj_mario_anim.animacja=2 {image_index=1}
if obj_mario_anim.animacja<>2 && !place_meeting(x,y-32,obj_wall) {image_index=0;kierunek_wychodzenia_murkowego=0}

if obj_mario_anim.animacja<>2 && place_meeting(x,y-32,obj_wall) && !keyboard_check(global.ster_down) && obj_mario_anim.size2=1 && kierunek_wychodzenia_murkowego=0 && obj_mario_anim.image_index=1 {kierunek_wychodzenia_murkowego=1}
if obj_mario_anim.animacja<>2 && place_meeting(x,y-32,obj_wall) && !keyboard_check(global.ster_down) && obj_mario_anim.size2=-1 && kierunek_wychodzenia_murkowego=0 && obj_mario_anim.image_index=1 {kierunek_wychodzenia_murkowego=-1}


if obj_mario_anim.animacja<>2 && place_meeting(x,y-32,obj_wall) && image_index=1 && kierunek_wychodzenia_murkowego=1 && !keyboard_check(global.ster_down) && !place_meeting(x-3,y,obj_wall) {x-=2}
if obj_mario_anim.animacja<>2 && place_meeting(x,y-32,obj_wall) && image_index=1 && kierunek_wychodzenia_murkowego=-1 && !keyboard_check(global.ster_down) && !place_meeting(x+3,y,obj_wall) {x+=2}

}
}



step_lift=0





////////////////////// OGRANICYENIE PREDKOSCI, REDUKUJ, REDUKCJA PREDKOSCI

if watered>1
    {
    if szybkosc>0 {obj_mario_anim.size2=1};
    if szybkosc<0 {obj_mario_anim.size2=-1};
    }
    
if wiatraczkuje_sie=0 {
if obj_mario_anim.ogon_merda=0{
if szybkosc>7/watered+speeded {szybkosc=7/watered+speeded}
if szybkosc<-7/watered-speeded {szybkosc=-7/watered-speeded}}

if obj_mario_anim.ogon_merda=0{
if szybkosc>7/watered+speeded {szybkosc=7/watered+speeded}
if szybkosc<-7/watered-speeded {szybkosc=-7/watered-speeded}}}

if wiatraczkuje_sie=1 {
if obj_mario_anim.ogon_merda=0{
if szybkosc>3/watered+speeded {szybkosc=3/watered+speeded}
if szybkosc<-3/watered-speeded {szybkosc=-3/watered-speeded}}

if obj_mario_anim.ogon_merda=0{
if szybkosc>3/watered+speeded {szybkosc=3/watered+speeded}
if szybkosc<-3/watered-speeded {szybkosc=-3/watered-speeded}}}



if speeded>0 {speeded-=0.1}
kuku+=1

if wyrywanie=0 && wall_jump=0 && statued=0 && trzesator=0 {
// NORMAL JUMP - NORMALNY SKOK
if watered=1 && block_sterring=0 && (keyboard_check(global.ster_jump) && !keyboard_check(global.ster_down) && sekwencja=0) || (keyboard_check(global.ster_jump) && lift_jump=1) && wall_jump_key=0 
    {
    SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(19,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    wall_jump_key=1;y-=abs(szybkosc)*1 ;sekwencja=1; grawitacja=-8; teststep=0;teststep2=0;steploop=0;steploop2=0;y_chwytania_drazka=-1000; obj_mario_anim.animacja=1;click_shot2=1};
// WATER JUMP - WODNY SKOK
if watered>1 && block_sterring=0  && (keyboard_check(global.ster_jump) && !keyboard_check(global.ster_down)) || (keyboard_check(global.ster_jump) && lift_jump=1) && wall_jump_key=0 
    {
    SXMS_SFX_PlayExt(95,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario_anim.swim_nozkowanie=10
    wall_jump_key=1;y-=abs(szybkosc)*1 ;sekwencja=1; if grawitacja>-8 && grawitacja<0 {grawitacja-=6};; if grawitacja>-8 && grawitacja>=0 {grawitacja=-5};if grawitacja<-8 {grawitacja=-8}; teststep=0;teststep2=0;steploop=0;steploop2=0;y_chwytania_drazka=-1000; obj_mario_anim.animacja=1;click_shot2=1};
    
if keyboard_check(global.ster_jump) && block_sterring=0  && kuku>1 && grawitacja<0 && sekwencja=1 && watered=1 && wiatraczkuje_sie=0 {grawitacja-=1.5+abs(szybkosc)/50; kuku=0};

if kierunek_wychodzenia_murkowego=0 {
if keyboard_check(global.ster_right) && block_sterring=0  && !keyboard_check(global.ster_down) {szybkosc+=0.15/przyczepnosc}
if keyboard_check(global.ster_left) && block_sterring=0  && !keyboard_check(global.ster_down) {szybkosc-=0.15/przyczepnosc}

hamuje=0
if keyboard_check(global.ster_right) && block_sterring=0  && szybkosc<0 && !keyboard_check(global.ster_down){szybkosc+=0.1/przyczepnosc;hamuje=1}
if keyboard_check(global.ster_left) && block_sterring=0  && szybkosc>0 && !keyboard_check(global.ster_down) {szybkosc-=0.1/przyczepnosc;hamuje=1}}
}
// poprawianie X'owania dzieki latajacemu blokowi

if place_meeting(x,y,o_point_winged) && !place_meeting(x-2,y,obj_wall) && !place_meeting(x+2,y,obj_wall)
    {
    koko=instance_place(x,y,o_point_winged)
    if !place_meeting(x+koko.leci,y,obj_wall) {x+=koko.leci}
    }
    
nie_moze_podbic_punktu=0
if place_meeting(x,y,o_point_winged) && (place_meeting(x-2,y,obj_wall) || place_meeting(x+2,y,obj_wall))
    {
    y-=5
    nie_moze_podbic_punktu=1
    }
    
    

    
// walljump

if wall_jump<>0 {wiatraczkuje_sie=0}

if wall_jump<>0 {click_shot2=1}

if anty_walljump=0 && global.ducher_zamieniony=0 {
if sekwencja=1 && watered=1 && grawitacja>0 && wall_jump=0 && szybkosc>0 && place_meeting(x+szybkosc+1,y,obj_wall) && keyboard_check(global.ster_right) && !place_meeting(x+szybkosc+1,y,o_point_smiechor) && !place_meeting(x+szybkosc+1,y,o_point_music_box)
    {

    for (i=0;i<szybkosc+1;i+=1) {if !place_meeting(x,y,obj_wall) {x+=1}}
    for (i=0;i<szybkosc+1;i+=1) {if place_meeting(x,y,obj_wall) {x-=1}}
    wall_jump=1
    szybkosc=0
    grawitacja=0
    wall_jump_key=1
    }
if wall_jump=1
    {
    if keyboard_check(global.ster_down) && !keyboard_check(global.ster_right) && !keyboard_check(global.ster_left) {wall_jump=0;obj_mario_anim.animacja=1;}
    if watered<>1 {wall_jump=0;obj_mario_anim.animacja=7}
    if random(100)>80 {part_particles_create(global.particle_sys_1,x+30,y+random(50),global.part_effect_smoke,3)}
    if random(100)>95 {part_particles_create(global.particle_sys_2,x+30,y+random(50),global.part_effect_star5,3)}
    obj_mario_anim.size2=-1
    obj_mario_anim.animacja=10
    szybkosc=0
    if grawitacja>1 {grawitacja=1}
    if place_meeting(x,y+5,obj_wall) {wall_jump=0}
    if keyboard_check(global.ster_jump) && wall_jump_key=0 {koko=instance_create(x+30,y+20,o_mario_wall_jump_effect);koko.image_xscale=-2;; koko.image_yscale=2
    SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(19,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    click_shot2=1;wall_jump=0; sekwencja=1;grawitacja=-8;szybkosc=-8;obj_mario_anim.size2=-1;obj_mario_anim.animacja=1;break}
    if !place_meeting(x+szybkosc+5,y,obj_wall) || place_meeting(x,y+2,o_subplatform) {wall_jump=0; sekwencja=1;grawitacja=0;obj_mario_anim.animacja=1}
    }
    
    

if sekwencja=1 && watered=1 && grawitacja>0 && wall_jump=0 && szybkosc<0 && place_meeting(x+szybkosc-1,y,obj_wall)  && keyboard_check(global.ster_left) && !place_meeting(x+szybkosc+1,y,o_point_smiechor) && !place_meeting(x+szybkosc+1,y,o_point_music_box)
    {
    for (i=0;i<abs(szybkosc+1);i+=1) {if !place_meeting(x,y,obj_wall) {x-=1}}
    for (i=0;i<abs(szybkosc+1);i+=1) {if place_meeting(x,y,obj_wall) {x+=1}}
    wall_jump=2
    szybkosc=0
    grawitacja=0
    wall_jump_key=1
    }
if wall_jump=2
    {
    if keyboard_check(global.ster_down) && !keyboard_check(global.ster_right) && !keyboard_check(global.ster_left) {wall_jump=0}
    if watered<>1 {wall_jump=0;obj_mario_anim.animacja=7}
    if random(100)>80 {part_particles_create(global.particle_sys_1,x,y+random(50),global.part_effect_smoke,3)}
    if random(100)>95 {part_particles_create(global.particle_sys_2,x,y+random(50),global.part_effect_star5,3)}
    obj_mario_anim.size2=1
    obj_mario_anim.animacja=10
    szybkosc=0
    if grawitacja>1 {grawitacja=1}
    if place_meeting(x,y+5,obj_wall) {wall_jump=0}
    if keyboard_check(global.ster_jump) && wall_jump_key=0 
    {click_shot2=1;koko=instance_create(x-10,y+20,o_mario_wall_jump_effect);koko.image_xscale=2; koko.image_yscale=2
    SXMS_SFX_PlayExt(10+round(random(3)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(19,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    wall_jump=0; ;grawitacja=-8;szybkosc=8;obj_mario_anim.size2=1;obj_mario_anim.animacja=1;break}
    if !place_meeting(x+szybkosc-5,y,obj_wall) || place_meeting(x,y+2,o_subplatform) {wall_jump=0; sekwencja=1;grawitacja=0;obj_mario_anim.animacja=1}
    }
}

    
// spadanie
if wyrywanie=0 {
// ZWYKLE SPADANIE
if watered=1{
if sekwencja=1 && grawitacja<0 {y+=grawitacja; testujstepa=0};
if sekwencja=1 && grawitacja<14 && wiatraczkuje_sie=0 {grawitacja+=1}
if sekwencja=1 && grawitacja<14 && wiatraczkuje_sie<>0 {grawitacja+=0.25}};
// WODNE SPADANIE
if watered>1{
if sekwencja=1 {
if grawitacja<0 {y+=grawitacja/watered; testujstepa=0};
if grawitacja<4 {grawitacja+=0.25/watered}
if grawitacja>4 {grawitacja=4}
}};


// zjezdzanie po stromosci

if global.rodzaj_mario<>0 {
if sekwencja=1 && grawitacja<0
    {
    for (i=0;i<abs(grawitacja+5);i+=1)
        {
        if place_meeting(x,round(y-i),o_point_block_bonus_INVICIBLE)
            {
            koko=instance_place(x,round(y-i),o_point_block_bonus_INVICIBLE)
            
            if y-i>=koko.y+30 {
            koko.destroy=1
            odglowywanie=1;
            grawitacja=0
            for (ii=0;ii<30;ii+=1)
                {
                if place_meeting(x,y,o_point_block_bonus_INVICIBLE) {y+=1}
                
                }
            }
            
            }
        
        
        
        }
    
    
    
    }}
    
if global.rodzaj_mario=0 {
if sekwencja=1 && grawitacja<0
    {
    for (i=0;i<abs(grawitacja+5);i+=1)
        {
        if place_meeting(x,round(y-i),o_point_block_bonus_INVICIBLE)
            {
            koko=instance_place(x,round(y-i),o_point_block_bonus_INVICIBLE)
            
            if y-i>=koko.y {
            koko.destroy=1
            odglowywanie=1;
            grawitacja=0
            for (ii=0;ii<30;ii+=1)
                {
                if place_meeting(x,y,o_point_block_bonus_INVICIBLE) {y+=1}
                
                }
            }
            
            }
        
        
        
        }
    
    
    
    }}
/*
if sekwencja=1 && place_meeting(x,y-1,o_point_block_bonus_INVICIBLE) && grawitacja<0
    {
    koko=instance_place(x,y-1,o_point_block_bonus_INVICIBLE)
    koko.destroy=1
    odglowywanie=1;
    for (i=0;i<abs(grawitacja)+5;i+=1)
        {
        if place_meeting(x,y-5,o_point_block_bonus_INVICIBLE) {y+=10}
        
        
        }
    }*/
    
if sekwencja=1 && place_meeting(x,y-1,o_point_block) && grawitacja<0
    {
    koko=instance_place(x,y-1,o_point_block)
    koko.destroy=1
    odglowywanie=1;
    }
if sekwencja=1 && place_meeting(x,y-1,o_point_winged) && grawitacja<0 && nie_moze_podbic_punktu=0
    {
    koko=instance_place(x,y-1,o_point_winged)
    koko.destroy=1
    odglowywanie=1;
    //for (i=0;i<20;i+=1) {if place_meeting(x,y-1,o_point_winged) {y+=1}}
    }   

if sekwencja=1 && place_meeting(x,y-1,obj_wall) && grawitacja<0
    {odglowywanie=1;}
while odglowywanie=1 && place_meeting(x,y-1,obj_wall) {y+=1}
if odglowywanie=1 && !place_meeting(x,y-1,obj_wall) {odglowywanie=0;y=ceil(y);grawitacja=0}

}
// spadanie gdy nic nie robi
czy_dotyka_windy=0
if collision_rectangle(x,y+64,x+32,y+70,obj_lift,1,0) {czy_dotyka_windy=1};
if collision_rectangle(x,y+64,x+32,y+65,o_subplatform,1,0) {czy_dotyka_windy=1};

if sekwencja=0 && !place_meeting(x,y+2,obj_wall) && czy_dotyka_windy=0 && wyrywanie=0 && o_koniec_etapu.local_global<>10 && o_koniec_etapu.local_global<>1 && o_koniec_etapu.local_global<>11 && o_koniec_etapu.local_global<>2 {sekwencja=1;obj_mario_anim.animacja=1}
dotykal_windy-=1

// subplatform

if sekwencja=1 && grawitacja>0 
    {
    y=ceil(y)
    windor.x=x
    windor.y=ceil(y)
    with(windor)
        {
        for (i=0;i<obj_mario.grawitacja;i+=1)
            {
            if place_meeting(x,y+i,o_subplatform) && !place_meeting(x,y-1,o_subplatform)
                {
                if place_meeting(x,y+20,o_mini_chmurka_do_chodzenia_po_niej) {repeat(10){part_particles_create(global.particle_sys_overscreen,x+random(100)-random(100),y+64,global.part_BOOMBOOM_smoke,1)}}
                obj_mario.wiatraczkuje_sie=0
                obj_mario.y+=i
                obj_mario.sekwencja=0
                obj_mario.grawitacja=0
                break;break;
                }
            }

        }
    }


// Assign grawitacji
if sekwencja=1 && grawitacja>0 && step_lift=0 && wyrywanie=0 {y+=grawitacja;step_lift=1}

// �apanie si� na windzie
/*
if grawitacja=0 && sekwencja=0 && !place_meeting(x,y-1,obj_lift) // Lapanie windy, gdy mario stoi w miejscu
    {      
    windor.x=x
    windor.y=floor(y)
    with(windor)
        {
        if place_meeting(x,y+1,obj_lift) || place_meeting(x,y+obj_mario.windloop,obj_wall)
                {
                getwind=instance_place(x,y+obj_mario.windloop+1,obj_lift)
                if instance_exists(getwind){
                obj_mario.y=getwind.y-64
                obj_mario.grawitacja=0
                obj_mario.sekwencja=0
                obj_mario.windloop=ceil(obj_mario.grawitacja+1)
                obj_mario.winduje=getwind}
                }
        }
    }*/
    //collision_rectangle(x,y+64,x+32,y+65,o_subplatform,1,1)
if !place_meeting(x,y+50,obj_lift) {windonip=0}

// sprawdz czy winda nalezy do obiektu ktory tworzy karuzele, jak Mario dotyka windy ktora
// nalezy do karuzeli to wtedy Mario niech napedza obiekt karuzeli
if windonip>0 {if windonip.nalezydo>0 {karnof=windonip.nalezydo;karnof.krec=1;}}


//sprawdź czy dotyka windy

        


if sekwencja=1 && grawitacja>0 && !place_meeting(x,y+grawitacja+2,obj_wall) && !place_meeting(x,y-3,obj_wall) // Lapanie windy
    {      
    y=round(y)
    windor.x=x
    windor.y=round(y)
        {
        for (ixa=0;ixa<ceil(obj_mario.grawitacja+3);ixa+=1)
            {
            with(windor)
                {
                if place_meeting(x,y+obj_mario.ixa,obj_lift)
                    {
                    getwind=instance_place(x,y+obj_mario.ixa,obj_lift)
                    if round(getwind.y)=y+63+obj_mario.ixa {
                    if instance_exists(getwind){
                    
                    obj_mario.wiatraczkuje_sie=0
                    obj_mario.czy_dotyka_windy=1
                    obj_mario.windonip=getwind.id
                    obj_mario.y=getwind.y-64
                    obj_mario.grawitacja=0
                    obj_mario.sekwencja=0
                    obj_mario.windloop=ceil(obj_mario.grawitacja+1)
                    obj_mario.winduje=getwind}}
                    }

                
                }
            }
        
        
        
        }
    windloop=0
    }
// gdy dotyka juz windy i zmieni na inna winde nie uzywajac skoku
//windonip=instance_place(x,y+3,obj_lift)

fix_wind.x=x+16
fix_wind.y=y+68

if instance_number(o_winda_przesowana_zamkowa)>0 {
if sekwencja=0 && grawitacja=0
    {
       with(fix_wind) 
        {
        zmienna_fixowa=0
        if place_meeting(x,y,o_winda_przesowana_zamkowa)
            {
            zmienna_fixowa=instance_place(x,y,o_winda_przesowana_zamkowa)
            }
        }
    }}
if fix_wind.zmienna_fixowa<>0 {windonip=fix_wind.zmienna_fixowa}

    
    
    //
if sekwencja=1 && place_meeting(x,y,obj_wall)
{
if place_meeting(x,y+40,o_mini_chmurka_do_chodzenia_po_niej) {repeat(10){part_particles_create(global.particle_map_sterring,x+random(100)-random(100),y+30,global.part_BOOMBOOM_smoke,1)}}
wiatraczkuje_sie=0;sekwencja=2; grawitacja=0;SXMS_SFX_PlayExt(2,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)};
while sekwencja=2 && place_meeting(x,y,obj_wall) {y-=1};
if sekwencja=2 && !place_meeting(x,y,obj_wall) {sekwencja=0};



            
// gdy nie ma nic pod nogami
if grawitacja>13 {grawitacja=13}
if wyrywanie=0 {x+=szybkosc}
if !keyboard_check(global.ster_right) && !keyboard_check(global.ster_left) && block_sterring=0  {szybkosc=szybkosc/1.07}
if statued=1 {szybkosc=szybkosc/1.1}

//


if global.scroll_kind=2000 
    {
    // blocker podczas scrollingu WYMUSZONEGO
    
    for (i=0;i<20;i+=1) 
        {
        if place_meeting(x-i-1,y,o_big_marker_3_scrool_blocker) && !place_meeting(x+3,y,obj_wall)
            {
            x+=1
            }
        if place_meeting(x+i+1,y,o_big_marker_3_scrool_blocker) && !place_meeting(x+3,y,obj_wall)
            {
            x-=1
            }  
        }  
    }
if place_meeting(x-4,y,o_big_marker_3_scrool_blocker) && place_meeting(x+3,y,obj_wall) && global.scroll_kind=2000 
            {
            {SXMS_C_Stop();
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)}
            break;
            }    
      
        

//global.roznica=x-20
//x-=global.roznica

if szybkosc>0
{
 

// poprawianie pozycji X - tak aby gracz nie wbijal sie w bloki
//if place_meeting(x+szybkosc,y,o_point_winged) && teststep3=0 && !place_meeting(x-1,y,obj_wall) && !place_meeting(x+1,y,obj_wall) {teststep3=1; steploop3=szybkosc+1}
//while teststep3=1 {if place_meeting(x+steploop3,y,o_point_winged) {steploop3-=1;};if !place_meeting(x+steploop3,y,o_point_winged){teststep3=0; x+=steploop3}} 

// testowanie stepa "dolnego" - schodzenie z gorki i wchodzenie pod gorke

    if !place_meeting(x,y+1,obj_wall) && sekwencja=0 && grawitacja=0
        {
        for (i=0;i<ceil(abs(szybkosc)+3);i+=1)
            {
            if place_meeting(x,y+i+1,obj_wall) {y+=i;break}
            }
        }
        
        
    if place_meeting(x,y,obj_wall) && (sekwencja=0 || sekwencja=1) //&& grawitacja=0
        {
        x=round(x)
        if !place_meeting(x,y-ceil(abs(szybkosc)+2),obj_wall)
            {
            for (i=0;i<ceil(abs(szybkosc)+2);i+=1)
                {
                if place_meeting(x,y,obj_wall) {y-=1}
                }
        }}
  
  // poprawianie pozycji X - tak aby gracz nie wbijal sie w bloki
if place_meeting(x+szybkosc,y,obj_wall) && teststep3=0 {teststep3=1; steploop3=szybkosc+1; }
while teststep3=1 {if place_meeting(x+steploop3,y,obj_wall) {steploop3-=1;};if !place_meeting(x+steploop3,y,obj_wall){teststep3=0; x+=steploop3}}      

}



if szybkosc<0
{
// poprawianie pozycji X - tak aby gracz nie wbijal sie w bloki



    if !place_meeting(x,y+1,obj_wall) && sekwencja=0 && grawitacja=0
        {
        for (i=0;i<ceil(abs(szybkosc)+3);i+=1)
            {
            if place_meeting(x,y+i+1,obj_wall) {y+=i;break}
            }
        }
        
        
    if place_meeting(x,y,obj_wall) && (sekwencja=0 || sekwencja=1)
        {
        x=round(x)
        if !place_meeting(x,y-ceil(abs(szybkosc)+2),obj_wall)
            {
            for (i=0;i<ceil(abs(szybkosc)+2);i+=1)
                {
                if place_meeting(x,y,obj_wall) {y-=1}
                }
        }}

if place_meeting(x+szybkosc,y,obj_wall) && teststep3=0 {teststep3=1; steploop3=abs(szybkosc)+1; if szybkosc<global.max_predkosc_po_zderzeniu*-1 {szybkosc=global.max_predkosc_po_zderzeniu*-1}}
while teststep3=1 {if place_meeting(x-steploop3,y,obj_wall) {steploop3-=1;};if !place_meeting(x-steploop3,y,obj_wall){teststep3=0; x-=steploop3}} 

//if place_meeting(x+szybkosc,y,o_point_winged) && teststep3=0 && !place_meeting(x-1,y,obj_wall) && !place_meeting(x+1,y,obj_wall) {teststep3=1; steploop3=abs(szybkosc)+1}
//while teststep3=1 {if place_meeting(x-steploop3,y,o_point_winged) {steploop3-=1;};if !place_meeting(x-steploop3,y,o_point_winged){teststep3=0; x-=steploop3}} 
}



} // Odcinanie algorytmow podczas biegania po scianie







// resetowanie k�ta biegania po�cianach

if obj_mario_anim.globalny_kat>0 && wyrywanie=0 {obj_mario_anim.globalny_kat-=5}
if obj_mario_anim.globalny_kat<0 && wyrywanie=0 {obj_mario_anim.globalny_kat+=5}


// wchodzenie po gumce 1

if statued=0 && global.ducher_zamieniony=0 && trzesator=0 {
if place_meeting(x,y+szybkosc,o_gravity_gumka_1) && szybkosc>=2 && wyrywanie=0 && keyboard_check(global.ster_right) && nosi_wyrwane=0
    {
    if place_meeting(x+szybkosc,y-szybkosc*2,obj_wall) {SXMS_SFX_PlayExt(115,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0);image_index=1;obj_mario_anim.animacja=0;biega_po_scianach_obrot=1;wyrywanie=10; for (i=0;i<32;i+=1) {if place_meeting(x,y,obj_wall){x-=1}}}
    }
if wyrywanie=10
    {
    
    biega_po_scianach_poprawiacz=0
    part_particles_create(global.particle_sys_1,x+random(62)-random(12)-32,y+random(32)+32,global.part_falling_white_star2,1)
    if keyboard_check(global.ster_right) && szybkosc<7 {szybkosc+=0.1}
    if keyboard_check(global.ster_left) {szybkosc-=0.2}
    
    if !keyboard_check(global.ster_right) && !keyboard_check(global.ster_left) && szybkosc>0 {szybkosc-=0.1}
    if szybkosc<2 {for(i=0;i<64;i+=1){czy_anim_resetuj_markera=1;if place_meeting(x,y-32-szybkosc,obj_wall){y+=1}};wyrywanie=0;sekwencja=1;grawitacja=0;szybkosc=0;biega_po_scianach_obrot=0;biega_po_scianach_cofacz_y=32;for (i=0;i<32;i+=1) {if !place_meeting(x,y,obj_wall) {x+=1}};for (i=0;i<32;i+=1) {if place_meeting(x,y,obj_wall) {x-=1}};break;break}
    if !place_meeting(x+10,y,obj_wall) {x=floor(x);wyrywanie=0;biega_po_scianach_obrot=0;biega_po_scianach_cofacz_y=0;break;break}
    if !place_meeting(x,y-szybkosc-1,obj_wall){
    for (i=0;i<32;i+=1) {if !place_meeting(x,y,obj_wall) {x+=1}}
    for (i=0;i<32;i+=1) {if place_meeting(x,y,obj_wall) {x-=1}}}
    // wchodzenie gorkowe
    
    for (i=0;i<szybkosc+1;i+=1) {if place_meeting(x,y,obj_wall) && !place_meeting(x-szybkosc-1,y,obj_wall){x-=1}}
    
    if place_meeting(x,y,obj_wall) {repeat(5) {part_type_orientation(global.part_falling_white_star,0,360,random(30)-random(30),0,0);part_particles_create(global.particle_sys_2,x+random(82)-random(32),y+random(32)-random(32),global.part_falling_white_star,1)};
        czy_anim_resetuj_markera=1;sekwencja=1;wyrywanie=0;grawitacja=0;szybkosc=0;biega_po_scianach_obrot=0;for(i=0;i<64;i+=1){if place_meeting(x,y,obj_wall){y+=1}};break;break}
    y-=szybkosc;
    obj_mario_anim.szybkosc_biegu=szybkosc*-4
    
    obj_mario_anim.x=x
    obj_mario_anim.y=y+48;
    }
if biega_po_scianach_obrot=1 && obj_mario_anim.globalny_kat<90 {obj_mario_anim.globalny_kat+=5}

// wchodzenie po gumce 2

if place_meeting(x,y-szybkosc,o_gravity_gumka_2) && szybkosc<=-2 && wyrywanie=0 && keyboard_check(global.ster_left) && nosi_wyrwane=0
    {
    if place_meeting(x-8+szybkosc,y-8+szybkosc,obj_wall) {SXMS_SFX_PlayExt(115,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0);image_index=1;obj_mario_anim.animacja=0;biega_po_scianach_obrot=2;wyrywanie=11; for (i=0;i<64;i+=1) {if place_meeting(x,y,obj_wall){x+=1}}}
    }
if wyrywanie=11
    {
    part_particles_create(global.particle_sys_1,x+random(62)-random(12),y+random(32)+32,global.part_falling_white_star2,1)
    if keyboard_check(global.ster_left) && szybkosc>-7 {szybkosc-=0.1}
    if keyboard_check(global.ster_right) {szybkosc+=0.2}
    
    if !keyboard_check(global.ster_right) && !keyboard_check(global.ster_left) && szybkosc<0 {szybkosc+=0.1}

    if szybkosc>-2 {for(i=0;i<64;i+=1){czy_anim_resetuj_markera=1;if place_meeting(x,y-32+szybkosc,obj_wall){y+=1}}wyrywanie=0;sekwencja=1;grawitacja=0;szybkosc=0;biega_po_scianach_obrot=0;biega_po_scianach_cofacz_y=32;for (i=0;i<132;i+=1) {if !place_meeting(x,y,obj_wall) {x-=1}};for (i=0;i<132;i+=1) {if place_meeting(x,y,obj_wall) {x+=1}};;break;break}
    if !place_meeting(x-10,y,obj_wall) {x=ceil(x);delay_to_statued=0;wyrywanie=0;biega_po_scianach_obrot=0;biega_po_scianach_cofacz_y=0;break;break}
    if !place_meeting(x,y+szybkosc-1,obj_wall){
    for (i=0;i<32;i+=1) {if !place_meeting(x,y,obj_wall) {x-=1}}
    for (i=0;i<32;i+=1) {if place_meeting(x,y,obj_wall) {x+=1}}}
    // wchodzenie gorkowe
    for (i=0;i<abs(szybkosc)+1;i+=1) {if place_meeting(x,y,obj_wall) && !place_meeting(x-szybkosc+1,y,obj_wall){x+=1}}
    
    if place_meeting(x,y,obj_wall) {repeat(5) {part_type_orientation(global.part_falling_white_star,0,360,random(30)-random(30),0,0);part_particles_create(global.particle_sys_2,x+random(32)-random(82),y+random(32)-random(32),global.part_falling_white_star,1)};
    czy_anim_resetuj_markera=0;sekwencja=1;delay_to_statued=0;wyrywanie=0;grawitacja=0;szybkosc=0;biega_po_scianach_obrot=0;for(i=0;i<64;i+=1){if place_meeting(x,y,obj_wall){y+=1}};break;break}
    y+=szybkosc;
    obj_mario_anim.szybkosc_biegu=szybkosc*-4
    
    obj_mario_anim.x=x+32
    obj_mario_anim.y=y+48
    
    if place_meeting(x-abs(szybkosc)-1,y,o_gravity_gumka_3) && szybkosc<=-2 && keyboard_check(global.ster_left)
        {
        if place_meeting(x,y-8-abs(szybkosc),obj_wall) {SXMS_SFX_PlayExt(115,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0);image_index=1;obj_mario_anim.animacja=0;biega_po_scianach_obrot=3;wyrywanie=12; for (i=0;i<64;i+=1) {if place_meeting(x,y,obj_wall){y+=1}}}
        }
    }
if biega_po_scianach_obrot=2 && obj_mario_anim.globalny_kat>-90 {obj_mario_anim.globalny_kat-=5}

if wyrywanie=12
    {
    part_particles_create(global.particle_sys_1,x+random(62)-random(12),y+random(32)+32,global.part_falling_white_star2,1)
    if keyboard_check(global.ster_left) && szybkosc>-7 {szybkosc-=0.1}
    if keyboard_check(global.ster_right) {szybkosc+=0.2}

    if !keyboard_check(global.ster_right) && !keyboard_check(global.ster_left) && szybkosc<0 {szybkosc+=0.1}

    if szybkosc>-2 {for(i=0;i<64;i+=1){czy_anim_resetuj_markera=0;if place_meeting(x+32+abs(szybkosc),y,obj_wall){x-=1}};obj_mario_anim.size2=obj_mario_anim.size2*-1;wyrywanie=0;sekwencja=1;grawitacja=0;szybkosc=szybkosc*-1;biega_po_scianach_obrot=0;biega_po_scianach_cofacz_y=32;for (i=0;i<132;i+=1) {if !place_meeting(x,y,obj_wall) {y-=1}};for (i=0;i<132;i+=1) {if place_meeting(x,y,obj_wall) {y+=1}};;break;break}
    if !place_meeting(x,y-10,obj_wall) {x=ceil(x);delay_to_statued=0;wyrywanie=0;biega_po_scianach_obrot=0;obj_mario_anim.size2=obj_mario_anim.size2*-1;biega_po_scianach_cofacz_y=0;szybkosc=szybkosc*-1;break;break}
    if !place_meeting(x+abs(szybkosc)+1,y,obj_wall){
    for (i=0;i<32;i+=1) {if !place_meeting(x,y,obj_wall) {y-=1}}
    for (i=0;i<32;i+=1) {if place_meeting(x,y,obj_wall) {y+=1}}}
    // wchodzenie gorkowe
    for (i=0;i<abs(szybkosc)+1;i+=1) {if place_meeting(x,y,obj_wall) && !place_meeting(x,y+abs(szybkosc)+1,obj_wall){x+=1}}
    
    if place_meeting(x,y,obj_wall) {repeat(5) {part_type_orientation(global.part_falling_white_star,0,360,random(30)-random(30),0,0);part_particles_create(global.particle_sys_2,x+random(32)-random(82),y+random(32)-random(32),global.part_falling_white_star,1)};
    czy_anim_resetuj_markera=0;sekwencja=1;delay_to_statued=0;wyrywanie=0;grawitacja=0;szybkosc=0;biega_po_scianach_obrot=0;for(i=0;i<64;i+=1){if place_meeting(x,y,obj_wall){y+=1}};break;break}
    x+=abs(szybkosc);
    obj_mario_anim.szybkosc_biegu=szybkosc*-4
    
    obj_mario_anim.x=x+32
    obj_mario_anim.y=y+64
    
    }}
if biega_po_scianach_obrot=3 && obj_mario_anim.globalny_kat>-180 {obj_mario_anim.globalny_kat-=5}

// EXECUTE POZYCJI LINORA

if obj_mario_anim.animacja=2 {linor.x=x+16;linor.y=y}
if obj_mario_anim.animacja<>2 {linor.x=x+16;linor.y=y}

// GRAFIKA JEST W END_STEP W OBJ_MARIO, BO MUSI BYC AKTUALIZOWANA STEPEM A NIE DRAWEM!!!!!

// ASSIGN ANIMACJI - ZMIENIAJ ANIMACJE SKOKU NA PLYWANIE GDY PLYWA

if watered>1 && obj_mario_anim.animacja=1 {obj_mario_anim.animacja=7}
if watered=1 && obj_mario_anim.animacja=7 {obj_mario_anim.animacja=1}



script_big_movable_blocks()

// trzymanie sie liny - ANIMUJ LINE

if wisi=2
    {


        
        
        
if collision_point(x+16+40,y+5,o_lina,1,1)
        {
        kefcio=collision_point(x+16+40,y+5,o_lina,1,1)
        kefcio.obnizaj+=(80-abs(kefcio.x-(x+16)))/5
        kefcio.kierunkuj=1
        }  
if collision_point(x+16+80,y+5,o_lina,1,1)
        {
        kefcio=collision_point(x+16+80,y+5,o_lina,1,1)
        kefcio.obnizaj+=(120-abs(kefcio.x-(x+16)))/10
        kefcio.kierunkuj=1
        }            
if collision_point(x+16+120,y+5,o_lina,1,1)
        {
        kefcio=collision_point(x+16+120,y+5,o_lina,1,1)
        kefcio.obnizaj+=(160-abs(kefcio.x-(x+16)))/20
        kefcio.kierunkuj=1
        }  
        
        
         
if collision_point(x+16,y+5,o_lina,1,1)
        {
        kefcio=collision_point(x+16,y+5,o_lina,1,1)
        //kefcio.obnizaj+=(40-abs(kefcio.x-(x+16)))/3
        //kefcio.kierunkuj=-((40-abs(kefcio.x-(x+16)))-30)/20
        //global.test_skasuj_mnie=-((40-abs(kefcio.x-(x+16)))-30)/20
        kefcio.obnizaj+=(40-abs(kefcio.x-(x+16)))/3
        kefcio.kierunkuj=0
        }      
if collision_point(x+16-40,y+5,o_lina,1,1)
        {
        kefcio=collision_point(x+16-40,y+5,o_lina,1,1)
        kefcio.obnizaj+=(80-abs(kefcio.x-(x+16)))/5
        kefcio.kierunkuj=-1
        }  
if collision_point(x+16-80,y+5,o_lina,1,1)
        {
        kefcio=collision_point(x+16-80,y+5,o_lina,1,1)
        kefcio.obnizaj+=(120-abs(kefcio.x-(x+16)))/10
        kefcio.kierunkuj=-1
        }            
if collision_point(x+16-120,y+5,o_lina,1,1)
        {
        kefcio=collision_point(x+16-120,y+5,o_lina,1,1)
        kefcio.obnizaj+=(160-abs(kefcio.x-(x+16)))/20
        kefcio.kierunkuj=-1
        }  
        
    /*
    kontuj=0
obnizaj=0
*/
    
    
    }


} // koniec pauzy


} // koniec sprawdzania czy istnieje Mario z duchem

}
