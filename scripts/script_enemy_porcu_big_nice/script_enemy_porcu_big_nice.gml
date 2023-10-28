function script_enemy_porcu_big_nice() {
	if global.pauza=0{
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3{

	if random(100)>99 {oczuje=1+random(1)}
	if sekwencja=0
	    {
	    image_xscale=1
	    image_yscale=1
	    if point_distance(x,y,obj_mario.x,obj_mario.y)<200 {sekwencja=1;kefcio=0;gugu=1}
	    }
	if sekwencja=1
	    {
	    image_xscale=2-(cos(degtorad(kefcio))*gugu)/2
	    kefcio+=10
	    gugu-=0.025
	    if gugu<=0 {sekwencja=2}
	    }
	if sekwencja=2
	    {
	    timer+=1
	    if timer>200 {timer=0;sekwencja=3;kefcio=90;gugu=1}
	    }
	if sekwencja=3
	    {
	    image_xscale=1+((cos(degtorad(kefcio))*gugu))/2
	    kefcio+=10
	    gugu-=0.025
	    if gugu<=0 {sekwencja=4}
	    }
	if sekwencja>=4
	    {
	    sekwencja+=1
	    if sekwencja>200 {sekwencja=0}
	    }
	image_yscale=image_xscale



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
	y=ystart+sin(degtorad(stream))*20
	}}


	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.6
	    {
    
	    draw_sprite_ext(global.gfx_enemy_porcu_nice,0,x,y,image_xscale/1.3,image_xscale/1.3,sin(stream/10)*10+360,c_white,1)
	    if oczuje>0
	        {
	        oczuje=oczuje/1.08
	        draw_sprite_ext(global.gfx_enemy_porcu_nice2,0,x,y,image_xscale/1.3,image_xscale/1.3,sin(stream/10)*10+360,c_white,oczuje)
	        }
	    }




}
