function script_enemy_troopa_2() {
	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {
	if y>room_height+180 {instance_destroy()}


	seened=1
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}


	// ruch sinusoidalny
	obliczator_lotu+=szybkosc_lotu
	x=xstart+sin(degtorad(obliczator_lotu))*dystans_lotu_x
	y=ystart+cos(degtorad(obliczator_lotu))*dystans_lotu_y
    
	if x<obj_mario.x {kierunek=1};
	if x>obj_mario.x {kierunek=-1};


	// kill

	if kill=1
	    {
	    niedotyka_dolu=0;
	    niedotyka_gory=0;
	    niedotyka_lewo=0;
	    niedotyka_prawo=0;
	    kefcio=0;
	    przesuniecie_w_poziomie=0;
	    przesuniecie_w_pionie=0;
    
	    for(i=0;i<20;i+=1)
	        {
	        if !place_meeting(x-i*10,y,obj_wall) {niedotyka_lewo=i;break};
	        }
	    for(i=0;i<20;i+=1)
	        {
	        if !place_meeting(x+i*10,y,obj_wall) {niedotyka_prawo=i;break};
	        }  
	    for(i=0;i<20;i+=1)
	        {
	        if !place_meeting(x,y-i*10,obj_wall) {niedotyka_dolu=i;break};
	        }
	    for(i=0;i<20;i+=1)
	        {
	        if !place_meeting(x,y+i*10,obj_wall) {niedotyka_gory=i;break};
	        } 
           
	    if niedotyka_dolu<=niedotyka_gory && kefcio=0
	        {
	        przesuniecie_w_pionie=-niedotyka_dolu*10
	        }
	    if niedotyka_dolu>niedotyka_gory && kefcio=0
	        {
	        przesuniecie_w_pionie=niedotyka_gory*10
	        }    
	    if niedotyka_lewo<=niedotyka_prawo
	        {
	        przesuniecie_w_poziomie=-niedotyka_lewo*10
	        }
	    if niedotyka_lewo>niedotyka_prawo
	        {
	        przesuniecie_w_poziomie=niedotyka_prawo*10
	        }   
	    lolo=instance_create(x+przesuniecie_w_poziomie,y+przesuniecie_w_pionie,o_enemy_troopa_lezy)
           
        
	    SXMS_SFX_PlayExt(56,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    
	    if obj_mario_anim.size2=1 {lolo.ixor=8};
	    if obj_mario_anim.size2=-1 {lolo.ixor=-8};
	    instance_destroy()
	    }



	if energy<=0 {kill=10}

	if kill=10
	    {
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.grafika=global.gfx_troopa_shell
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    }
	if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.grafika=global.gfx_troopa_shell
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    }      
    
    
    
	// gfx
	stream+=0.1



	}}
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
	draw_sprite_ext(global.gfx_troopa_leg,0,x+18,y+20+sin(stream),kierunek,1,sin(stream)*10+360+kierunek*-20,c_white,1)
	draw_sprite_ext(global.gfx_troopa,0,x+16,y+sin(stream)*2,kierunek,1,sin(stream)*5+360,c_white,1)
	draw_sprite_ext(global.gfx_troopa_leg,0,x+18,y+20+sin(stream),kierunek,1,sin(-stream)*10+360+kierunek*-20,c_white,1)
	draw_sprite_ext(global.gfx_troopa_arm,0,x+18,y+5+sin(stream),kierunek,1,sin(stream)*40+360,c_white,1)
	draw_sprite_ext(global.gfx_wings,0,x+18-14*kierunek,y+5+sin(stream),kierunek*0.65,0.65,sin(stream*2)*30+360-20*kierunek,c_white,1)
	}



}
