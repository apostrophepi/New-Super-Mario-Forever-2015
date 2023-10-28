function script_enemy_cannon() {
	if global.pauza=0 {
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

	efektuj2+=2+efektuj*2
	if efektuj>360 {efektuj=0}
	if efektuj>1 {efektuj=efektuj/1.03}
	if instance_exists(obj_mario){
	if (x+120<obj_mario.x || x-100>obj_mario.x) && !instance_exists(nalezy_do) {reload+=1}}
	if reload>=reload_shot
	    {
	    reload=0
	    if x>obj_mario.x {kierunek=-1;effect_create_above(ef_smoke,x+20-40,y+20,1,c_white)}
	    if x<obj_mario.x {kierunek=1;effect_create_above(ef_smoke,x+20+40,y+20,1,c_white)}
	    if rodzaj=0 || rodzaj=1 {efektuj=20;koko=instance_create(x+20,y+20,o_enemy_bullet_bill); SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if rodzaj=2 {efektuj=20;koko=instance_create(x+20,y+20,o_enemy_bullet_bill_homing);nalezy_do=koko.id; SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if rodzaj=3 {efektuj=20;koko=instance_create(x+20,y+20,o_enemy_bullet_bill_homing_kolecowy);nalezy_do=koko.id; SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if rodzaj=4 {efektuj=20;koko=instance_create(x+20,y+20,o_enemy_bullet_ball);koko.spadanie=-100.001; SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if rodzaj=5 {efektuj=20;koko=instance_create(x+20,y+20,o_enemy_bullet_ball);koko.spadanie=0.001; SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
	    koko.kierunek=kierunek
	    koko.depth=depth+10
	    if rodzaj=0 {koko.rodzaj=0}
	    if rodzaj=1 {koko.rodzaj=1}
	    if rodzaj=4 {koko.rodzaj=4}
	    if rodzaj=5 {koko.rodzaj=5}
	    }

	}}

















	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
	{
	if rodzaj<3 {draw_sprite_ext(s_cannon_2,0,x+19,y+19,1+sin(degtorad(efektuj2))*efektuj/40+efektuj/40,1-sin(degtorad(efektuj2))*efektuj/40+efektuj/40,0,c_white,1)}
	if rodzaj=3 {draw_sprite_ext(s_cannon_2,0,x+19,y+19,1,1,0,c_white,1)}
	if rodzaj>=4 {draw_sprite_ext(s_cannon_2,0,x+19,y+19,1,1,0,c_white,1)}
	}



}
