function script_enemy_pirania_rzodkiewa_3() {
	if global.pauza=0
	    {
	    if zapamietaj_predkosc<>0 {speed=zapamietaj_predkosc;zapamietaj_predkosc=0}
	    obracacz-=4
	    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.6 {instance_destroy()}
	    if place_meeting(x,y,obj_wall) {SXMS_SFX_PlayExt(75,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);instance_create(x,y,o_fajny_duzy_wybuch_1); instance_destroy()}
	    //vspeed+=0.05
    
	    if random(10)>9 {effect_create_above(ef_smoke,x+random(50)-random(50),y+random(50)-random(50),1,c_white)}
	    if sizer<1 {sizer+=0.05}
	    if zainicjuj_namirzanie=0
	        {
	        zainicjuj_namirzanie=1
	        path_fireballa=path_add()
	        path_add_point(path_fireballa,xstart,ystart,150)
	        path_add_point(path_fireballa,(xstart+obj_mario.x)/2,(ystart+obj_mario.y)/2-150,150)
	        path_add_point(path_fireballa,obj_mario.x,obj_mario.y-50,150)
	        path_add_point(path_fireballa,obj_mario.x,obj_mario.y+200,150)
	        path_add_point(path_fireballa,obj_mario.x,obj_mario.y+2500,150)
	        path_add_point(path_fireballa,obj_mario.x,obj_mario.y+22500,150)
	        path_set_precision(path_fireballa,4)
	        path_set_kind(path_fireballa,1)
	        path_set_closed(path_fireballa,0)     
	        path_start(path_fireballa,4,1,0)
	        }
	    }
	if global.pauza<>0 && zapamietaj_predkosc=0
	    {
	    zapamietaj_predkosc=speed
	    speed=0
	    }
    
	    draw_sprite_ext(s_fireball_boom,0,x+37,y+37,sizer*3,sizer*3,0,c_white,sizer/2)
	    draw_sprite_ext(s_big_fireball,0,x+37,y+37,0.15+sizer/2,0.15+sizer/2,obracacz,c_white,sizer)
    
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(s_big_fireball,0,x+37,y+37,0.55+sizer/5,0.55+sizer/5,-200-obracacz,c_white,sizer/3)
	    draw_set_blend_mode(bm_normal)



}
