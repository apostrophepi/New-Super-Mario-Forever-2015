function script_enemy_big_buzzy_beetle() {
	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

	seened=1
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

	// strzelanie

	reload+=1

	if rodzaj=1{
	if reload>150
	    {
	    reload=0
	    SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    koko=instance_create((x+32)+sin(degtorad(180+sin(stream)*15))*70,(y+34+sin(stream)*2)+cos(degtorad(180+sin(stream)*15))*70,o_enemy_bullet_ball_2)
	    koko.direction=90-90*kierunek+sin(stream)*15
	    koko.speed=4
	    koko.depth=depth+1000
	    }}


	if rodzaj=2{
	if reload>200
	    {
	    SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    reload=0
	    koko=instance_create((x+32)+sin(degtorad(180+sin(stream)*15))*70,(y+34+sin(stream)*2)+cos(degtorad(180+sin(stream)*15))*70,o_enemy_bullet_ball_2)
	    koko.direction=90+sin(stream)*15
	    koko.speed=4
	    koko.depth=depth+1000
    
	    koko=instance_create((x+32)+sin(degtorad(135+sin(stream)*15))*70,(y+34+sin(stream)*2)+cos(degtorad(135+sin(stream)*15))*70,o_enemy_bullet_ball_2)
	    koko.direction=90-45
	    koko.speed=4
	    koko.depth=depth+1000
    
	    koko=instance_create((x+32)+sin(degtorad(225+sin(stream)*15))*70,(y+34+sin(stream)*2)+cos(degtorad(225+sin(stream)*15))*70,o_enemy_bullet_ball_2)
	    koko.direction=90+45
	    koko.speed=4
	    koko.depth=depth+1000

	    }}
    
	// chodzenie
	    {
	    x+=kierunek
	    if place_meeting(x,y,obj_wall) {y-=1}
	    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+65,x+76,y+66,o_subplatform,0,1) {y+=1}
	    }

	if place_meeting(x+kierunek,y-1,obj_wall)
	    {
	    kierunek=kierunek*-1
	    }

    
    
    
	if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+65,x+76,y+66,o_subplatform,0,1) {sekwencja=1}
	if sekwencja=1
	    {
	    if global.is_subplatforms=1
	        {
	        for (i=0;i<ceil(grawitacja);i+=1)
	            {
	            if collision_rectangle(x,y+65+i,x+76,y+66+i,o_subplatform,0,1) {y+=i;sekwencja=0; grawitacja=0;break;break;break}
	            }
	        }
	    if grawitacja<12 {grawitacja+=0.5}
	    y+=grawitacja;
	    }
	if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
	if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0}


	// kill

	if energy<=0 {kill=10}

	if kill=1
	    {
	    SXMS_SFX_PlayExt(56,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y-30,o_enemy_troopa_lezy2);
	    if obj_mario_anim.size2=1 {lolo.ixor=8};
	    if obj_mario_anim.size2=-1 {lolo.ixor=-8};
	    instance_destroy()
    
	    if rodzaj=2{
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.grafika=s_big_buzzy_beetle_2
	    lolo.kierunek_idzie=kierunek}
	    }
    
	if kill=10
	    {
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.grafika=s_big_buzzy_beetle_2
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    }
	if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.grafika=s_big_buzzy_beetle_2
	    lolo.kierunek_idzie=kierunek
	    instance_destroy()
	    }

	// gfx
	stream+=0.05
	}}
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
	if rodzaj=1 {draw_sprite_ext(s_cannon_2,0,(x+32)+sin(degtorad(180+sin(stream)*15))*70,(y+34+sin(stream)*2)+cos(degtorad(180+sin(stream)*15))*70,kierunek,1,sin(stream)*15+360,c_white,1)}
	if rodzaj=2
	    {
	    draw_sprite_ext(s_cannon_2,0,(x+32)+sin(degtorad(180+sin(stream)*15))*70,(y+34+sin(stream)*2)+cos(degtorad(180+sin(stream)*15))*70,kierunek,1,sin(stream)*15+360+90,c_white,1)
	    draw_sprite_ext(s_cannon_2,0,(x+32)+sin(degtorad(225+sin(stream)*15))*50,(y+34+sin(stream)*2)+cos(degtorad(225+sin(stream)*15))*50,kierunek,1,sin(stream)*15+360-45,c_white,1)
	    draw_sprite_ext(s_cannon_2,0,(x+32)+sin(degtorad(135+sin(stream)*15))*50,(y+34+sin(stream)*2)+cos(degtorad(135+sin(stream)*15))*50,kierunek,1,sin(stream)*15+360+45,c_white,1)
	    }


	draw_sprite_ext(s_big_buzzy_noga,0,x+32+20*kierunek,y+35,kierunek,1,sin(stream*-2)*20*-1,c_white,1)
	draw_sprite_ext(s_big_buzzy_noga,0,x+32+20*kierunek,y+35,kierunek,1,sin(stream*2)*20*-1,c_white,1)
	draw_sprite_ext(s_big_buzzy_noga,0,x+32-20*kierunek,y+35,kierunek/1.25,1,sin((stream+64)*-2)*20*-1,c_white,1)
	draw_sprite_ext(s_big_buzzy_noga,0,x+32-20*kierunek,y+35,kierunek/1.25,1,sin((stream+64)*2)*20*-1,c_white,1)
	if rodzaj=0 {draw_sprite_ext(s_big_buzzy_beetle_2,0,x+35,y+15+sin(stream)*2,kierunek,1,sin(stream)*5+360,c_white,1)}
	if rodzaj=1 {draw_sprite_ext(s_big_buzzy_beetle_2,0,x+35,y+15+sin(stream)*2,kierunek,1,sin(stream)*15+360,c_white,1)}
	if rodzaj=2 {draw_sprite_ext(s_big_buzzy_beetle_2,0,x+35,y+15+sin(stream)*2,kierunek,1,sin(stream)*15+360,c_white,1)}
	}




}
