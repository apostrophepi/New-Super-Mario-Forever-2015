function script_enemy_lakitu_normal2() {
	if global.pauza=0
	    {
	    if energy<=0 {kill=10}
	    if aktywna=0
	        {
        
	        if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {aktywna=1;SXMS_SFX_PlayExt(317,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	        }
        

	    if kill=1
	        {
	        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        lolo=instance_create(x,y,o_enemy_kill);
	        lolo.kierunek_idzie=kierunek
	        lolo.specjalny_kill=1
	        instance_destroy()
	        }
    
    
    
	    if kill=10
	        {
	        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        lolo=instance_create(x,y,o_enemy_kill);
	        lolo.kierunek_idzie=kierunek
	        lolo.specjalny_kill=1
	        instance_destroy()
	        }
    
	    if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	        lolo=instance_create(x,y,o_enemy_kill);
	        lolo.kierunek_idzie=kierunek
	        lolo.specjalny_kill=1
	        instance_destroy()
	    } 
    

	    if aktywna=1 && obj_mario.x>0 && obj_mario.x<room_width
	        {
	        if x<obj_mario.x-200-losowator_ruchu && ixor<60 {ixor+=0.5}
	        if x>obj_mario.x+200+losowator_ruchu && ixor>-60 {ixor-=0.5}
        
        
	        if x<obj_mario.x-50-losowator_ruchu && ixor<5 {ixor+=0.1}
	        if x>obj_mario.x+50+losowator_ruchu && ixor>-5 {ixor-=0.1}
        
	        if obj_mario.szybkosc>-3 && obj_mario.szybkosc<3 {
	        if x>obj_mario.x-200 && x<obj_mario.x+200 && ixor>1 {ixor=ixor/1.03}
	        if x>obj_mario.x-200 && x<obj_mario.x+200 && ixor<-1 {ixor=ixor/1.03}}
        
	        if lata_nadol=1
	            {
	            if y<obj_mario.y-300 && iyor<10 {iyor+=0.5}
	            if y>obj_mario.y-200 && iyor>-10 {iyor-=0.5}
            
	            if (y>obj_mario.y-200 && y<obj_mario.y-100) && (iyor<-2 || iyor>2) {iyor=iyor/1.1}
	            }
	        if lata_nadol=2
	            {
	            if y<obj_mario.y-100 && iyor<10 {iyor+=0.5}
	            if y>obj_mario.y+150 && iyor>-10 {iyor-=0.5}
            
	            if (y>obj_mario.y-100 && y<obj_mario.y+100) && (iyor<-2 || iyor>2) {iyor=iyor/1.1}
	            }
        
        
	        x+=ixor
	        y+=iyor
	        if x<obj_mario.x {kierunek=1}
	        if x>obj_mario.x {kierunek=-1}
	        anim+=2
        
        
	        if sekwencja<>3 && x<__view_get( e__VW.XView, 0 )+880 && x>__view_get( e__VW.XView, 0 )-80 && y>__view_get( e__VW.YView, 0 )-80 && y<__view_get( e__VW.YView, 0 )+680 && czym_rzuca<>6 {timer+=1};
	        if sekwencja<>3 && x<__view_get( e__VW.XView, 0 )+880 && x>__view_get( e__VW.XView, 0 )-80 && y>__view_get( e__VW.YView, 0 )-80 && y<__view_get( e__VW.YView, 0 )+680 && czym_rzuca=6 && instance_number(o_lakitu_normal)<20 {timer+=1};
	        if sekwencja=0 && timer>100 {sekwencja=1;timer=0};
	        if sekwencja=1 && podnoszenie_rzucania<60 {podnoszenie_rzucania+=5}
	        if sekwencja>=3 {podnoszenie_rzucania=podnoszenie_rzucania/1.1}
	        if sekwencja=1 && timer=100 {sekwencja=2};
	        if sekwencja=2 && timer>150 
	            {
            
	            if czym_rzuca=0 {SXMS_SFX_PlayExt(77+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);lolo=instance_create(x,y,o_lakitu_throw);lolo.rodzaj=czym_rzuca;sekwencja=3}
	            if czym_rzuca=1 && !place_meeting(x,y,obj_wall)
	                {
	                SXMS_SFX_PlayExt(77+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                sekwencja=3
	                lolo=instance_create(x,y,o_enemy_troopa_leci);lolo.rodzaj=czym_rzuca; if x<obj_mario.x {lolo.ixor=8}; if x>=obj_mario.x {lolo.ixor=-8}
	                }
	            if czym_rzuca=2 && !place_meeting(x,y,obj_wall)
	                {
	                SXMS_SFX_PlayExt(77+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                sekwencja=3
	                lolo=instance_create(x,y-20,o_enemy_goomba);lolo.rodzaj=czym_rzuca; if x<obj_mario.x {lolo.kierunek=1}; if x>=obj_mario.x {lolo.kierunek=-1}
	                }
	            if czym_rzuca=3 && !place_meeting(x,y,obj_wall)
	                {
	                SXMS_SFX_PlayExt(77+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                sekwencja=3
	                lolo=instance_create(x,y-40,o_enemy_rex);lolo.rodzaj=czym_rzuca; if x<obj_mario.x {lolo.kierunek=1}; if x>=obj_mario.x {lolo.kierunek=-1}
	                }
	            if czym_rzuca=4
	                {
	                SXMS_SFX_PlayExt(77+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                lolo=instance_create(x,y-60,o_pirania_fireball); lolo.direction=270; lolo.speed=3;
	                lolo=instance_create(x,y-60,o_pirania_fireball); lolo.direction=270-20; lolo.speed=3;
	                lolo=instance_create(x,y-60,o_pirania_fireball); lolo.direction=270+20; lolo.speed=3;
	                sekwencja=3;
	                }
	            if czym_rzuca=5 && !place_meeting(x,y,obj_wall)
	                {
	                SXMS_SFX_PlayExt(77+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                lolo=instance_create(x,y-20,o_enemy_spikey_jumper);lolo.sekwencer=1
	                sekwencja=3
	                }
	            if czym_rzuca=6
	                {
	                SXMS_SFX_PlayExt(77+round(random(2)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	                lolo=instance_create(x,y,o_lakitu_normal)
	                lolo.aktywna=aktywna             
	                lolo.respawnuje_sie=respawnuje_sie
	                lolo.lata_nadol=lata_nadol
	                lolo.czym_rzuca=czym_rzuca
	                sekwencja=3
	                }
                
                
                
                
                
	            };
	        if sekwencja>=1 && podnies_lapy<180 {podnies_lapy+=5}
	        if sekwencja=3 && timer>0 {timer=timer/1.1;podnies_lapy=podnies_lapy/1.3}
	        if sekwencja=3 && timer<=0.1 {sekwencja=0;timer=0;}
	        }
    
    
	    }

	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
	draw_sprite_ext(global.gfx_lakitus_1,0,x,y,kierunek-sin(degtorad(anim*4))/20,1+sin(degtorad(anim*4))/20,-ixor*2+360,c_white,1)
	draw_sprite_ext(global.gfx_lakitus_2,0,x+sin(degtorad(180-ixor*4))*40,y+cos(degtorad(180-ixor*4))*40,kierunek,1,-ixor*4+360,c_white,1)
	if sekwencja=0 {draw_sprite_ext(global.gfx_lakitus_3,0,x+sin(degtorad(180-ixor*4-20*kierunek))*40,y+cos(degtorad(180-ixor*4-20*kierunek))*40,kierunek,1,-ixor*4+360,c_white,1)}
	if sekwencja>=1
	    {
	    draw_sprite_ext(global.gfx_lakitus_4,0,x+sin(degtorad(180-ixor*4+30*kierunek))*30,y+cos(degtorad(180-ixor*4+30*kierunek))*30,-kierunek,1,-ixor*4+360-podnies_lapy,c_white,1)
	    draw_sprite_ext(global.gfx_lakitus_4,0,x+sin(degtorad(180-ixor*4-30*kierunek))*30,y+cos(degtorad(180-ixor*4-30*kierunek))*30,kierunek,1,-ixor*4+360+podnies_lapy,c_white,1)
    
    
    
	    if czym_rzuca=0 && sekwencja<>3 {draw_sprite_ext(s_wiatrak_kolec,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania,kierunek/2,0.5,-ixor*4+360+podnies_lapy,c_white,1)}
	    if czym_rzuca=1 && sekwencja<>3 {draw_sprite_ext(global.gfx_troopa_shell,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania,kierunek,1,-ixor*4+360+podnies_lapy,c_white,1)}
	    if czym_rzuca=2 && sekwencja<>3
	        {
	        draw_sprite_ext(global.gfx_goomba,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania+16,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania+15,kierunek,1,-ixor*4+360,c_white,1)
	        draw_sprite_ext(global.gfx_goomba_leg,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania+5,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania+35,kierunek,1,-ixor*4+360,c_white,1)
	        draw_sprite_ext(global.gfx_goomba_leg,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania+24,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania+35,kierunek,1,-ixor*4+360,c_white,1)}
	    if czym_rzuca=3 && sekwencja<>3 {draw_sprite_ext(s_rex_4,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania,kierunek,1,-ixor*4+360,c_white,1)}
	    if czym_rzuca=4 && sekwencja<>3
	        {
	        draw_sprite_ext(s_fireball_small,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania+sin(degtorad(anim*2))*podnoszenie_rzucania/2,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania+cos(degtorad(anim*2))*podnoszenie_rzucania/2,kierunek,1,-ixor*4+360+anim*2,c_white,1)
	        draw_sprite_ext(s_fireball_small,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania+sin(degtorad(anim*2+120))*podnoszenie_rzucania/2,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania+cos(degtorad(anim*2+120))*podnoszenie_rzucania/2,kierunek,1,-ixor*4+360+anim*2,c_white,1)
	        draw_sprite_ext(s_fireball_small,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania+sin(degtorad(anim*2+120+120))*podnoszenie_rzucania/2,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania+cos(degtorad(anim*2+120+120))*podnoszenie_rzucania/2,kierunek,1,-ixor*4+360+anim*2,c_white,1)
	        }
	    if czym_rzuca=5 && sekwencja<>3
	        {
	        draw_sprite_ext(s_spikey_9,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania,kierunek,1,-ixor*4+360+podnies_lapy,c_white,1)
	        }
	    if czym_rzuca=6 && sekwencja<>3
	        {
	        draw_sprite_ext(global.gfx_lakitus_1,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania,kierunek,1,-ixor*4+360,c_white,1)
	        draw_sprite_ext(global.gfx_lakitus_2,0,x+sin(degtorad(ixor*4))*podnoszenie_rzucania*1.5,y+cos(degtorad(180-ixor*4))*podnoszenie_rzucania*1.5,kierunek,1,-ixor*4+360,c_white,1)
	        }   
        
	    }}
    
    
    
    
    
    
    
    
    
    
    
    



}
