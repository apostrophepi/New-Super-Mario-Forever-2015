function script_enemy_bomb_omb() {
	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

	seened=1
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

	    {
	    x+=kierunek
	    if place_meeting(x,y,obj_wall) {y-=1}
	    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {y+=1}
	    }

	if place_meeting(x+kierunek,y-1,obj_wall)
	    {
	    kierunek=kierunek*-1
	    }

    
    
    
	if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {sekwencja=1}
	if sekwencja=1
	    {
	    if global.is_subplatforms=1
	        {
	        for (i=0;i<ceil(grawitacja);i+=1)
	            {
	            if collision_rectangle(x,y+39+i,x+32,y+40+i,o_subplatform,0,1) {y+=i;sekwencja=0; grawitacja=0;break;break;break}
	            }
	        }
	    if grawitacja<12 {grawitacja+=0.5}
	    y+=grawitacja;
	    }
	if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
	if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0}


	// kill

	if kill=1
	    {
	    SXMS_SFX_PlayExt(56,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_bomb_omb_lezy);
	    if obj_mario_anim.size2=1 {lolo.ixor=8};
	    if obj_mario_anim.size2=-1 {lolo.ixor=-8};
	    lolo.obracacz=(300+random(120))*lolo.kierunek*-1
	    instance_destroy()
	    }


    
	if energy<=0 {kill=10}

	if kill=10
	    {
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_bomb_omb_lezy);
	    instance_destroy()
	    }
	if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_bomb_omb_lezy);
	    instance_destroy()
	    }
    
    
    
	// gfx
	stream+=0.1
	}}
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
	draw_sprite_ext(s_bomb_omb_2,0,x+18-28*kierunek,y+10+sin(stream)*4,kierunek/2,cos(stream)/2,0,c_white,1)
	draw_sprite_ext(s_bomb_omb_3,0,x+18-10*kierunek,y+28+kierunek*sin(stream),kierunek*0.6,0.6,kierunek*sin(stream*2)*30,c_white,1)
	draw_sprite_ext(s_bomb_omb_3,0,x+18-10*kierunek,y+28+kierunek*sin(stream*-1),kierunek*0.6,0.6,kierunek*sin(stream*2)*-30,c_white,1)
	draw_sprite_ext(s_bomb_omb_1,0,x+18,y+15+sin(stream)*2,kierunek*0.5,0.5,sin(stream)*5+360-20*kierunek,c_white,1)
	}



}
