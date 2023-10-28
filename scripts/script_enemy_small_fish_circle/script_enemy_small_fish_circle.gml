function script_enemy_small_fish_circle() {
	if global.pauza=0{

	if kierunek=1 {x=xstart+sin(degtorad(circle_kat))*(circle_promien+sin(degtorad(sinus))*sinus_promien); y=ystart+cos(degtorad(circle_kat))*(circle_promien+sin(degtorad(sinus))*sinus_promien); circle_kat+=circle_speed;}
	if kierunek=-1 {x=xstart+sin(degtorad(circle_kat))*(circle_promien+sin(degtorad(sinus))*sinus_promien); y=ystart+cos(degtorad(circle_kat))*(circle_promien+sin(degtorad(sinus))*sinus_promien); circle_kat-=circle_speed}
	sinus+=sinus_adder

	// obrywanie
	if energy<=0 {kill=10}

	if kill=10
	    {
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.kierunek_idzie=kierunek
	    lolo.wodne_spadanie=2
	    lolo.specjalny_kill=6
	    instance_destroy()
	    }
	if kill=1000
	    {
	    obj_mario.power_star_combo+=1
	    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
	    lolo=instance_create(x,y,o_enemy_kill);
	    lolo.kierunek_idzie=kierunek
	    lolo.wodne_spadanie=2
	    lolo.specjalny_kill=6
	    instance_destroy()
	    } 
	// gfx
	stream+=0.1
	}


	if image_index=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
	    {
    
	    draw_sprite_ext(global.gfx_enemy_big_fish[0],0,x,y,-kierunek-sin(stream/2)/50,-1+sin(stream/2)/50,circle_kat,c_white,1)
	    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek,y,-kierunek/3-sin(stream/2)/50,1/3+sin(stream/2)/50,circle_kat,c_white,1)

	    }}




}
