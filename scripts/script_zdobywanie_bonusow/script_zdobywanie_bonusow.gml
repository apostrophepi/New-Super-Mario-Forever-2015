function script_zdobywanie_bonusow() {
	if global.pauza=0 && statued=0
	    {
    
	    // zdobywanie happy star
    
	    if place_meeting(x,y,o_HAPPY_STAR) && statued=0
	        {
	        fonde=instance_place(x,y,o_HAPPY_STAR)
        
	        SXMS_SFX_PlayExt(300+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        global.happy_stars+=1
	        o_HUD_tworzony_przez_gracza.dzielnik_timer=200
	        instance_create(fonde.x,fonde.y,o_happy_star_glow_collected)
	        instance_create(fonde.x,fonde.y,o_efekt_zdobytej_monety)
	        instance_create(fonde.x,fonde.y,o_happy_star_collected)
	        with(fonde) {instance_destroy()}
	        }
        
        
	    // zdobywanie gwiazdki i rozwalanie przeciwnikow GWIAZDKA
    

    
	    if place_meeting(x,y,o_power_star) && statued=0 && !instance_exists(obj_mario_duch) 
	        {
	        star_music_tick_switch=1
	        instance_create(x,y,o_efekt_zdobytej_monety)
	        global.punkty+=1000    
	        SXMS_SFX_PlayExt(116,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        koko=instance_place(x,y,o_power_star)
	        with(koko) {instance_destroy()}
	        music_tick=2
	        power_star_time=660
	        }
	    if power_star_time<=0 && wisi<>1000 {power_star_migacz=0;power_star_combo=0;power_star_combo_actual=0;}
	    if power_star_time>0 || wisi=1000 {
        
	    if power_star_combo_actual<>power_star_combo
	        {
	        power_star_combo_actual=power_star_combo
	        fifi=instance_create(x,y,o_cyferkownia);fifi.wartosc=power_star_combo_actual;fifi.koloruj=1
	        }
	    if power_star_combo_actual>=8 {power_star_combo=0;power_star_combo_actual=0;
	    {global.punkty+=5000;SXMS_SFX_PlayExt(22,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.zycia+=1
	    lolo=instance_create(x+16,y,o_cyferkownia)
	    lolo.napis="1UP!"}}
    
	    if wisi<>1000{
	    power_star_time-=1;repeat(1){part_particles_create(global.particle_sys_1,x+random(80),y+random(94),global.part_effect_torch_star,1)}}
    
	    if place_meeting(x,y,o_enemy_goomba)
	        {
	        jojo=instance_place(x,y,o_enemy_goomba); with(jojo){kill=1000}
	        }
	    }
	    if wisi<>1000 {
	    power_star_migacz+=0.2
	    if power_star_migacz>=0 && power_star_migacz<=1 {power_star_kolorek=c_white}
	    if power_star_migacz>=1 && power_star_migacz<=2 {power_star_kolorek=c_red}
	    if power_star_migacz>=2 && power_star_migacz<=3 {power_star_kolorek=c_blue}
	    if power_star_migacz>=3 && power_star_migacz<=4 {power_star_kolorek=c_orange}
	    if power_star_migacz>=4 && power_star_migacz<=5 {power_star_kolorek=c_purple}
	    if power_star_migacz>=5 && power_star_migacz<=6 {power_star_kolorek=c_yellow}
	    if power_star_migacz>=6 && power_star_migacz<=7 {power_star_kolorek=c_fuchsia}   
	    if power_star_migacz>7 {power_star_migacz=0}}
    
    
	    // dostanei zycia za monety
	    if global.coins>99 {global.punkty+=5000;SXMS_SFX_PlayExt(22,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.coins-=99;global.zycia+=1
	    lolo=instance_create(x+16,y,o_cyferkownia)
	    lolo.napis="1UP!"}
    
	    // zdobywanie pomaranczowej-czerwonej monety
	    if place_meeting(x,y,o_RED_COIN) && global.coins_red_time>0 {red_coins_collected+=1;if red_coins_collected<8 {fifi=instance_create(x,y,o_cyferkownia);fifi.wartosc=red_coins_collected;fifi.koloruj=1};coin=instance_place(x,y,o_RED_COIN);SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.coins+=1;with(coin){instance_destroy()}}
	    if red_coins_collected>=8 {red_coins_collected=0;
	    {global.punkty+=5000;SXMS_SFX_PlayExt(22,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.zycia+=1
	    lolo=instance_create(x+16,y,o_cyferkownia)
	    lolo.napis="1UP!"}}
    
    
	    // rozwalanie murkow lub nie
    
	    if global.rodzaj_mario<>0 {can_destroy_brick=1}
	    if global.rodzaj_mario=0 {can_destroy_brick=0}
    
    
	    // zdobywanie monet
	    if place_meeting(x,y,o_COIN_SKACZACY_RAZ) 
	    {instance_create(x+16,y+16,o_coin_collect_efekt);instance_create(x,y,o_efekt_zdobytej_monety);
	    instance_create(x+20,y+20,o_efekt_zdobycia_monety);
	    coin=instance_place(x,y,o_COIN_SKACZACY_RAZ);
	    SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.coins+=1;with(coin)
	    {instance_create(x+16,y+16,o_coin_collect_efekt);instance_create(x,y,o_efekt_zdobytej_monety);instance_destroy()}}
    
	    if place_meeting(x,y,o_COIN) {instance_create(x+20,y+20,o_efekt_zdobycia_monety);coin=instance_place(x,y,o_COIN);SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.coins+=1;with(coin){instance_create(x+16,y+16,o_coin_collect_efekt);instance_create(x,y,o_efekt_zdobytej_monety);instance_destroy()}}
	    if place_meeting(x,y,o_coin_falling) {instance_create(x+20,y+20,o_efekt_zdobycia_monety);coin=instance_place(x,y,o_coin_falling);SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.coins+=1;with(coin){instance_create(x+16,y+16,o_coin_collect_efekt);instance_create(x,y,o_efekt_zdobytej_monety);instance_destroy()}}

	if place_meeting(x,y,o_coin)  && statued=0
	    {
	    global.punkty+=200
	    SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    coin=instance_place(x,y,o_coin)
	    with(coin){instance_destroy()
    
	    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)
	    instance_create(x+16,y+16,o_point_coin_2)
	        }
	    }
    
	    if place_meeting(x,y,o_bonus_mushroom_zycie)  && statued=0 && !instance_exists(obj_mario_duch) 
	        {
	        SXMS_SFX_PlayExt(22,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        lolor=instance_create(x,y,o_cyferkownia)
	        lolor.napis="1UP!"
	        global.zycia+=1

    
	        global.punkty+=1000  
	        koko=instance_place(x,y,o_bonus_mushroom_zycie)
	        with(koko) {instance_destroy()}
	        }
        
	        // FIRE FLOWER PERMANENT
	    if place_meeting(x,y,o_bonus_kwiatek_permanent) && !instance_exists(obj_mario_duch)  && statued=0
	        {
	        global.punkty+=2000   
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0) 
	        koko=instance_place(x,y,o_bonus_kwiatek_permanent)
	        with(koko) {instance_destroy()}
	        animator.anim_mario_zmiana=1000
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70}
	        obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=2;animator.anim_mario_zmiana=2000
	        }
	        // FIRE FLOWER PERMANENT
	    if place_meeting(x,y,o_bonus_flaying_mushroom_permanent) && !instance_exists(obj_mario_duch)  && statued=0
	        {
	        global.punkty+=2000   
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0) 
	        koko=instance_place(x,y,o_bonus_flaying_mushroom_permanent)
	        with(koko) {instance_destroy()}
	        animator.anim_mario_zmiana=1000
	        if global.rodzaj_mario=0 {global.rodzaj_mario=10;animator.size=0.70}
	        obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=10;animator.anim_mario_zmiana=2000
	        }
	     if place_meeting(x,y,o_bonus_duchowy_grzyb_instant) && !instance_exists(obj_mario_duch)  && statued=0
	        {  
	        global.punkty+=2000
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)  
	        koko=instance_place(x,y,o_bonus_duchowy_grzyb_instant)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=5;animator.size=0.70}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=5;animator.anim_mario_zmiana=2000}
	        }           
        
        
        
        
        
	    if place_meeting(x,y,o_bonus_mushroom_LEVITATING) && !instance_exists(obj_mario_duch)  && statued=0
	        {
	        global.punkty+=2000   
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0) 
	        koko=instance_place(x,y,o_bonus_mushroom_LEVITATING)
	        with(koko) {instance_destroy()}
	        animator.anim_mario_zmiana=1000
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70}
	        }
        
        
	    if place_meeting(x,y,o_bonus_mushroom) && !instance_exists(obj_mario_duch)  && statued=0
	        {
	        global.punkty+=2000   
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0) 
	        koko=instance_place(x,y,o_bonus_mushroom)
	        with(koko) {instance_destroy()}
	        animator.anim_mario_zmiana=1000
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70}
	        }
    

	    if place_meeting(x,y,o_bonus_kwiatek) && !instance_exists(obj_mario_duch)  && statued=0
	        {   
	        global.punkty+=2000 
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        koko=instance_place(x,y,o_bonus_kwiatek)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=2;animator.anim_mario_zmiana=2000}
	        }

        
	    if place_meeting(x,y,o_bonus_rzodkiew) && !instance_exists(obj_mario_duch)  && statued=0
	        {
	        global.punkty+=2000    
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        koko=instance_place(x,y,o_bonus_rzodkiew)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=3;animator.anim_mario_zmiana=2000}
	        }
        
	    if place_meeting(x,y,o_bonus_boomer_salad) && !instance_exists(obj_mario_duch)  && statued=0
	        { 
	        global.punkty+=2000 
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)  
	        koko=instance_place(x,y,o_bonus_boomer_salad)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=4;animator.anim_mario_zmiana=2000}
	        }
           
	    if place_meeting(x,y,o_bonus_duchowy_grzyb) && !instance_exists(obj_mario_duch)  && statued=0
	        {  
	        global.punkty+=2000
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)  
	        koko=instance_place(x,y,o_bonus_duchowy_grzyb)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=5;animator.anim_mario_zmiana=2000}
	        }
    
	    if place_meeting(x,y,o_bonus_mlotker_grzyb) && !instance_exists(obj_mario_duch)  && statued=0
	        {
	        global.punkty+=2000
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)    
	        koko=instance_place(x,y,o_bonus_mlotker_grzyb)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=6;animator.anim_mario_zmiana=2000}
	        }    
    
	    if place_meeting(x,y,o_bomber_bonus) && !instance_exists(obj_mario_duch)  && statued=0
	        {  
	        global.punkty+=2000
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)  
	        koko=instance_place(x,y,o_bomber_bonus)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=7;animator.anim_mario_zmiana=2000}
	        }   

	    if place_meeting(x,y,o_bonus_listek) && !instance_exists(obj_mario_duch)  && statued=0
	        {  
	        global.punkty+=2000
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)  
	        koko=instance_place(x,y,o_bonus_listek)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=8;animator.anim_mario_zmiana=2000}
	        }  
        
        
	    if place_meeting(x,y,o_bonus_tanooki_suit) && !instance_exists(obj_mario_duch)  && statued=0
	        {  
	        global.punkty+=2000
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)  
	        koko=instance_place(x,y,o_bonus_tanooki_suit)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=9;animator.anim_mario_zmiana=2000}
	        }     
        
    
	    if place_meeting(x,y,o_bonus_flaying_mushroom) && !instance_exists(obj_mario_duch)  && statued=0
	        {
	        global.punkty+=2000
	        SXMS_SFX_PlayExt(44,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)    
	        koko=instance_place(x,y,o_bonus_flaying_mushroom)
	        with(koko) {instance_destroy()}
        
        
	        if global.rodzaj_mario=0 {global.rodzaj_mario=1;animator.size=0.70;animator.anim_mario_zmiana=1000;break;break}
	        if global.rodzaj_mario>0 {obj_mario_anim.anim_docelowy=global.rodzaj_mario;global.rodzaj_mario=10;animator.anim_mario_zmiana=2000}
	        }      
        
	    }



}
