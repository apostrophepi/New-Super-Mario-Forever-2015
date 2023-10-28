draw_sprite_ext(s_swing_hit,0,x,y,image_xscale,image_yscale,kierunek,c_white,image_alpha)
if global.pauza=0
    {
    kierunek+=dir
    if image_xscale>0 {image_xscale+=0.15}
    if image_xscale<0 {image_xscale-=0.15}
    if image_yscale>0 {image_yscale+=0.15}
    if image_yscale<0 {image_yscale-=0.15}
    
    image_alpha-=0.1
    if image_alpha<=0 {instance_destroy()}
    
    
    
    
    
       // BIG PANCERNIK
       if place_meeting(x,y,o_enemy_big_buzzy_beetle) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_big_buzzy_beetle);
        koko.kill=1
        jeden_atak=1
        }
       if place_meeting(x,y,o_enemy_big_buzzy_beetle_cannonier) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_big_buzzy_beetle_cannonier);
        koko.kill=1
        jeden_atak=1
        }
       if place_meeting(x,y,o_enemy_big_buzzy_beetle_mega_cannonier) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_big_buzzy_beetle_mega_cannonier);
        koko.kill=1
        jeden_atak=1
        }  
        
        
       if place_meeting(x,y,o_enemy_troopa_lezy2) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_troopa_lezy2);
        if koko.x<obj_mario.x {koko.ixor=-5;koko.iyor=-5;koko.obracaj_od_uderzenia=10}
        if koko.x>=obj_mario.x {koko.ixor=5;koko.iyor=-5;koko.obracaj_od_uderzenia=-10}
        
        jeden_atak=1
        koko.stream=0
        koko.timer=0
        
        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }  
        
        
       if place_meeting(x,y,o_enemy_troopa_leci2) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_troopa_leci2);
        koko.kill=1
        jeden_atak=1
        }     
         
    
    
    // KOOPA TROOPA WYJATKI
       if place_meeting(x,y,o_enemy_buzzy_beetle) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_buzzy_beetle);
        koko.kill=1
        jeden_atak=1
        }
       if place_meeting(x,y,o_enemy_troopa_lezy) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_troopa_lezy);
        if koko.x<obj_mario.x {koko.ixor=-5;koko.iyor=-5;koko.obracaj_od_uderzenia=10}
        if koko.x>=obj_mario.x {koko.ixor=5;koko.iyor=-5;koko.obracaj_od_uderzenia=-10}
        
        jeden_atak=1
        koko.stream=0
        koko.timer=0
        
        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }  
       if place_meeting(x,y,o_enemy_troopa_leci) && jeden_atak=0 && niezabija=0
        {
        koko=instance_place(x,y,o_enemy_troopa_leci);
        koko.kill=1
        jeden_atak=1
        }     
        
        
    
    if place_meeting(x,y,o_enemy_troopa) && niezabija=0 && jeden_atak=0
        {
        koko=instance_place(x,y,o_enemy_troopa);
        koko.kill=1
        jeden_atak=1
        }
    
    if place_meeting(x,y,o_enemy_goomba) && niezabija=0 && jeden_atak=0
        {
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        instance_destroy();
        instance_create(x,y,o_fireball_boom);
        jeden_atak=1;
        }
    if place_meeting(x,y,o_enemy_goomba_lezy) && niezabija=0 && jeden_atak=0
        {
        koko=instance_place(x,y,o_enemy_goomba_lezy);
        with (koko) {kill=1};
        instance_destroy();
        instance_create(x,y,o_fireball_boom);
        jeden_atak=1;
        } 
  
    
    
    
    }

