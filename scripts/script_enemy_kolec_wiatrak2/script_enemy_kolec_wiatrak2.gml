function script_enemy_kolec_wiatrak2() {
	if sekwencja_aktywacji=0
	    {
	    sekwencja_aktywacji=1
	    aktywuj=speed
	    speed=0
	    }

	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 && global.pauza=0
	    {
	    if sekwencja_aktywacji=1 {sekwencja_aktywacji=2;speed=aktywuj;aktywuj=0}
    
	    }

	if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed;nagraj_speed=0}
	if global.pauza<>0 && speed<>0 {nagraj_speed=speed;speed=0}




	if stworz=0
	    {
	    stworz=1
	    kolec[0]=instance_create(x,y,o_plapka_element)
	    kolec[1]=instance_create(x,y,o_plapka_element)
	    kolec[2]=instance_create(x,y,o_plapka_element)
	    kolec[3]=instance_create(x,y,o_plapka_element)
    
	    kolec[0].nalezy_do=id
	    kolec[1].nalezy_do=id
	    kolec[2].nalezy_do=id
	    kolec[3].nalezy_do=id
    
	    kolec[0].nachylenie=0
	    kolec[1].nachylenie=90
	    kolec[2].nachylenie=180
	    kolec[3].nachylenie=270 
    
	    kolec[0].energy=energy
	    kolec[1].energy=energy
	    kolec[2].energy=energy
	    kolec[3].energy=energy

	    kolec[0].ma_energy=ma_energy
	    kolec[1].ma_energy=ma_energy
	    kolec[2].ma_energy=ma_energy
	    kolec[3].ma_energy=ma_energy
	    }

	if global.pauza=0 && sekwencja_aktywacji=2
	    {
    
    
    
    
    
	    aktywuj2+=1
	    nachylenie+=szybkosc_obrotu
	    kolec[0].x=x-sin(degtorad(nachylenie))*20
	    kolec[0].y=y-cos(degtorad(nachylenie))*20-20
	    kolec[0].nachylenie=nachylenie
    
    
	    kolec[1].x=x-sin(degtorad(nachylenie+90))*20
	    kolec[1].y=y-cos(degtorad(nachylenie+90))*20-20
	    kolec[1].nachylenie=nachylenie+90
    
	    kolec[2].x=x-sin(degtorad(nachylenie+180))*20
	    kolec[2].y=y-cos(degtorad(nachylenie+180))*20-20
	    kolec[2].nachylenie=nachylenie+180
    
	    kolec[3].x=x-sin(degtorad(nachylenie+270))*20
	    kolec[3].y=y-cos(degtorad(nachylenie+270))*20-20
	    kolec[3].nachylenie=nachylenie+270
    
    
	    if place_meeting(x,y,o_plapka_odbijator)
	        {
	        koko=instance_place(x,y,o_plapka_odbijator)
	        direction=koko.direction
	        speed=koko.szybkosc
	        }
	    }

	if killuj=1
	    {
	    with(kolec[0]) {instance_destroy()}
	    with(kolec[1]) {instance_destroy()}
	    with(kolec[2]) {instance_destroy()}
	    with(kolec[3]) {instance_destroy()}
	    instance_destroy()
	    }




	draw_sprite_ext(global.gfx_enemy_pokey_7,0,x,y-20,1,1,0,c_white,1)




	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {

	if samplowanie=0 {sampel=SXMS_SFX_PlayExt(103,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);samplowanie=1}
	if SXMS_SFX_Position(1,sampel,0)>70000 {SXMS_SFX_Position(0,sampel,0)}





	SXMS_SFX_VolumeAbsolute(sampel,global.glosnosc_dzwieku*((ma_energy*40)/(max((ma_energy*40),point_distance(x,y,obj_mario.x,obj_mario.y)))))



	} else {samplowanie=0}



 



}
