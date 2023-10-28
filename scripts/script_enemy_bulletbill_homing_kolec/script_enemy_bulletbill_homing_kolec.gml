function script_enemy_bulletbill_homing_kolec() {
	if global.pauza<>0 && speed<>0 {nagraj_speed=speed; speed=0}
	if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0}


	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1  {

	seened=1

	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {instance_destroy()}

	if kierunek=-1 && steruj<50
	    {
	    x-=szybkosc; direction=180
	    }
	if kierunek=1 && steruj<50
	    {
	    x+=szybkosc; direction=0
	    }

	    steruj+=1
	    if ilegania>0 {ilegania-=1;
	    if steruj>=50{speed=3
	    desdir=point_direction(x,y,obj_mario.x+20,obj_mario.y+40)
	    if abs(direction-desdir)<=180 {if direction<desdir direction+=1 else direction-=1}
	    else {if direction<desdir direction-=1 else direction+=1}}}
    
	// do przodu
    
	do_przodu+=3
	if do_przodu>=40 {depth=-90000}

	if global.graphics=5 {
	dymek+=1
	if dymek>20 {effect_create_above(ef_smoke,x+sin(degtorad(direction+270))*40,y+cos(degtorad(direction+270))*40,0.75,c_white);dymek=0}}
    
    
	// kill


    
    
    
	// gfx
	stream+=0.1
	if ogonek<1 {ogonek+=0.05}
	}}

	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
	if kierunek=1{
	draw_sprite_ext(s_spikey_10,0,x,y,kierunek*ogonek,1,direction,c_white,0.5)
	draw_sprite_ext(s_bullet_zakolcowany,0,x,y,kierunek*-1,1,direction,c_white,1)}

	if kierunek=-1{
	draw_sprite_ext(s_spikey_10,0,x,y,kierunek*ogonek*-1,-1,direction,c_white,0.5)
	draw_sprite_ext(s_bullet_zakolcowany,0,x,y,kierunek,1,direction,c_white,1)}}



}
