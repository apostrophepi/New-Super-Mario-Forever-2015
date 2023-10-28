function script_mario_rzodkiewa() {
	draw_sprite_ext(s_bonus_rzodkiew,1,x+15,y+10,wielkosc+0.35+0.1*(sin(degtorad(animowanie)))+powieszator,wielkosc+0.35-0.1*(sin(degtorad(animowanie)))+powieszator,kreciolek*1.2,c_white,1)

	if global.pauza=0
	    {
	    if wielkosc<0.2 {wielkosc+=0.005}
	    if powieszator<0.4 {powieszator+=0.02};
    
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1 {instance_destroy()}
	    animowanie+=5

	    if sekwencja=0 {kreciolek=kreciolek/1.3}
	        {
	        skacze+=1
	        if skacze>10 && sekwencja=0
	            {
	            sekwencja=1
	            grawitacja=-15
	            //y-=20
	            skacze=0
	            }
            
	        if sekwencja=1
	            {
	            if kierunek=1 && !place_meeting(x+3,y,obj_wall)
	                {
	                x+=5+speeded;if kreciolek>-40 {kreciolek-=4};
	                }
	            if kierunek=-1 && !place_meeting(x-3,y,obj_wall)
	                {
	                x-=5+speeded;if kreciolek<40 {kreciolek+=4};
	                }
	            if place_meeting(x+3*kierunek,y,obj_wall) && ilosc_skokow>0
	                {
	                kierunek=kierunek*-1
	                }
	            }
        
	        }
	    if ilosc_skokow>0{
	    if place_meeting(x,y,o_enemy_goomba)
	        {
	        global.hit_x=x
	        global.hit_y=y
	        ilosc_skokow-=1
	        kierunek=kierunek*-1
	        koko=instance_place(x,y,o_enemy_goomba);
	        with (koko) {energy-=1};
	        instance_create(x,y,o_fireball_boom);
	        }
	    if place_meeting(x,y,o_enemy_goomba_lezy)
	        {
	        global.hit_x=x
	        global.hit_y=y
	        koko=instance_place(x,y,o_enemy_goomba_lezy);
	        with (koko) {kill=77};
	        instance_destroy();
	        instance_create(x,y,o_fireball_boom);
	        ilosc_skokow-=1;
	        } 
	        }
    
    
    
	        if !place_meeting(x,y+1,obj_wall) {sekwencja=1}
	        if sekwencja=1
	            {
	            if grawitacja<12 {grawitacja+=0.5};
	            if !place_meeting(x,y+grawitacja,obj_wall) && grawitacja<0 {y+=grawitacja}
	            if grawitacja>0 {y+=grawitacja}
	            }
	        if sekwencja=1 && place_meeting(x,y,obj_wall) && ilosc_skokow>0 {sekwencja=2}
	        if sekwencja=2 {for (i=0;i<13;i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0;skacze=0;ilosc_skokow-=1}
        
    
    
    
    
	    }


    
    



}
