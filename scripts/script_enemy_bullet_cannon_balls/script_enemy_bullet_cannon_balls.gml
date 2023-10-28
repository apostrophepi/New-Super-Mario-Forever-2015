function script_enemy_bullet_cannon_balls() {
	if global.pauza<>0 && speed<>0 {nagraj_speed=speed; speed=0}
	if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0}


	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {instance_destroy()}



	// do przodu
    
	do_przodu+=3
	if do_przodu>=40 {depth=-90000}

	if speed>0 {speed-=0.02}
	iyor+=0.1
	y+=iyor
	kiedy_wybucha+=1
	if kiedy_wybucha>10 && place_meeting(x,y,obj_wall) {instance_destroy(); instance_create(x,y,o_efekt_wybuchu_ognia)}

	// gfx
	stream+=5
	}

	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
	draw_sprite_ext(s_fireball,0,x,y,0.35,0.35,stream,c_white,1)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_fireball,0,x,y,0.5,0.5,stream,c_white,1)
	draw_set_blend_mode(bm_normal)}




}
