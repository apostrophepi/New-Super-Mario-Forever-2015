function script_mario_boomer() {
	draw_sprite_ext(s_boomer_salad_2,1,x+15,y+10,0.25+0.1*(sin(degtorad(animowanie)))+powiekszator,0.25-0.1*(sin(degtorad(animowanie)))+powiekszator,kreciolek+sin(degtorad((animowanie)/2))*10,c_white,1)
	if sekwencer<=2 {draw_sprite_ext(s_boomer_mouth,0,x+15,y-10,wielkosc_buzi+abs(sin(degtorad(zucie_przeciwnika)))/2+min(0.5,zucie_przeciwnika),wielkosc_buzi+abs(sin(degtorad(zucie_przeciwnika)))/2+min(0.5,zucie_przeciwnika),sin(degtorad(zucie_przeciwnika/2))*30,c_white,1)}
	if sekwencer=3  {draw_sprite_ext(s_boomer_cheving,0,x+25,y-10,wielkosc_buzi+abs(sin(degtorad(zucie_przeciwnika)))/5+0.75,wielkosc_buzi+abs(sin(degtorad(zucie_przeciwnika)))/5+0.75,sin(degtorad(zucie_przeciwnika/2))*30,c_white,znikacz_buziowy)}
	if plucie>0 {draw_sprite_ext(s_boomer_spitting,0,x+25,y-10,plucie*plucie_wzg_gracza,plucie,0,c_white,1)}



	if global.pauza=0
	    {

    
	    // pozeranie
    
	    delay+=1
    
	    if delay>-1
	        {
	        if skacze>100 && sekwencja=0 && max_zjadl>0
	            {
	            if place_meeting(x,y,o_enemy_goomba)
	                {
	                cel=instance_place(x,y,o_enemy_goomba)
	                with(cel) {if niezjadywalny=1 {o_mario_boomer.cel=0}}
	                }
	            }
	        delay=0
	        }
    
	        if cel<>0 && sekwencer=0 {sekwencer=0.5; cel=0}
        
        
	        if sekwencer=0.5
	            {
            
	            with(cel){instance_destroy()}
	            if wielkosc_buzi<0.5 {wielkosc_buzi=0.5}
	            if wielkosc_buzi<1 {wielkosc_buzi+=0.1}
	            if wielkosc_buzi>=1 {sekwencer=1;SXMS_SFX_PlayExt(49,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	            }
	        if sekwencer=1
	            {
            
	            cel=0
	            sekwencer=2
	            }

        
	        if sekwencer=2
	            {
	            if wielkosc_buzi>0 {wielkosc_buzi-=0.05}
	            if wielkosc_buzi<=0 {sekwencer=3}
	            if znikacz_buziowy<1 {znikacz_buziowy+=0.01}
	            }
	        if sekwencer=3
	            {
	            if znikacz_buziowy<1 {znikacz_buziowy+=0.05}
	            zucie_przeciwnika+=20
	            if zucie_przeciwnika>560 {sekwencer=4;}
	            }
	        if sekwencer=4
	            {
	            if znikacz_buziowy>0 {znikacz_buziowy=znikacz_buziowy/1.35}
	            if znikacz_buziowy<=0.01 {znikacz_buziowy=0;sekwencer=5}
	            }
	        if sekwencer<>4 && plucie>0 {plucie=plucie/1.3}
	        if sekwencer=5
	            {
	            strzelator_delay+=1

	            if strzelator_delay>10 {strzelator_delay=0;strzelator_ile+=1;
	            max_zjadl-=1;
	            SXMS_SFX_PlayExt(45,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	            repeat(1){plucie=1
	            lolo=instance_create(x+16,y-16-random(10)+random(10),o_mario_fireball)
	            lolo.iyor=-random(8)
	            if x>obj_mario.x {lolo.ixor=8+random(4)}
	            if x<obj_mario.x {lolo.ixor=-8-random(4)}}}
	            if strzelator_ile>8 {strzelator_ile=0
	            sekwencer=0
	            skacze=0
	            cel=0
	            zucie_przeciwnika=0
	            if max_zjadl<=0 {sekwencja=1;grawitacja=-8; kreciolek=0}}
	            }
        
	        if x>obj_mario.x {plucie_wzg_gracza=1}
	        if x<obj_mario.x {plucie_wzg_gracza=-1}
    
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1 {instance_destroy()}
	    animowanie+=5
    
    
        
	    if sekwencja=0 && max_zjadl>0 {kreciolek=kreciolek/1.3}
	        {
	        if powiekszator<0.75 {powiekszator+=0.01}
        
	        skacze+=1
	        if skacze>10000 && sekwencja=0
	            {
	            sekwencja=1
	            grawitacja=-10
	            //y-=20
	            skacze=0
	            }
            
	        if sekwencja=1 && max_zjadl>0
	            {
	            if kierunek=1 && !place_meeting(x+3,y,obj_wall)
	                {
	                x+=3;if kreciolek>-40 {kreciolek-=4};
	                }
	            if kierunek=-1 && !place_meeting(x-3,y,obj_wall)
	                {
	                x-=3;if kreciolek<40 {kreciolek+=4};
	                }
	            if place_meeting(x+3*kierunek,y,obj_wall)
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
	        if sekwencja=1 && place_meeting(x,y,obj_wall) && max_zjadl>0 {sekwencja=2;SXMS_SFX_PlayExt(48,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	        if sekwencja=2 {for (i=0;i<13;i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0;skacze=0}
	    }


    
    



}
