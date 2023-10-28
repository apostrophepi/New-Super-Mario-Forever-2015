function script_mario_fireball() {
	/*sekwencja=0
	ixor=0
	iyor=0
	efekt=0
	efekt2=0
	*/

	if global.pauza=0
	    {
	    x+=ixor
	    if place_meeting(x,y,obj_wall) {instance_destroy();instance_create(x,y,o_fireball_boom)}
    
	    y+=iyor
	    iyor+=0.2
	    if place_meeting(x,y,obj_wall) {y-=iyor;iyor=-3}
	    efekt-=ixor*2
	    }
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1 {instance_destroy()}

	if place_meeting(x,y,o_enemy_goomba)
	    {
	    global.hit_x=x
	    global.hit_y=y
	    koko=instance_place(x,y,o_enemy_goomba);
	    with (koko) {energy-=1};
	    instance_destroy();
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
	    }
    
    
    

	draw_sprite_ext(s_fireball_small,0,x,y,1,1,efekt,c_white,1)
	draw_set_blend_mode(bm_add)
	draw_sprite_ext(s_fireball_small,0,x,y,1.5,1.5,efekt*1.2,c_white,0.3)
	draw_set_blend_mode(bm_normal)



}
