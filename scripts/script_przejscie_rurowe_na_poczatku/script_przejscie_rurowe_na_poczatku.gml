function script_przejscie_rurowe_na_poczatku() {
	if wychodzi_rury_w_nastepnym_etapie=0 {
	if global.wychodz_z_rury_nastepny_etap<>0
	    {
	    if global.wychodz_z_rury_nastepny_etap=2
	        {
	        global.pauza=11
	        depth=110000
	        animator.depth=110000
	        //obj_mario_anim.size2=1
	        //obj_mario_anim.animacja=6
	        /*obj_mario_anim.run_pochylenie=0
	        obj_mario_anim.hamowanie+=5
	        obj_mario_anim.kat=0
	        obj_mario_anim.run_kat=0
	        obj_mario_anim.run_promien=0*/

	        global.wychodz_z_rury_nastepny_etap=10001
	        }
        
	    if global.wychodz_z_rury_nastepny_etap=1
	        {
	        global.pauza=11
	        depth=110000
	        animator.depth=110000
	        //obj_mario_anim.size2=1
	        //obj_mario_anim.animacja=6
	        /*obj_mario_anim.run_pochylenie=0
	        obj_mario_anim.hamowanie+=5
	        obj_mario_anim.kat=0
	        obj_mario_anim.run_kat=0
	        obj_mario_anim.run_promien=0*/

	        global.wychodz_z_rury_nastepny_etap=10000
	        }
	    }
	if global.wychodz_z_rury_nastepny_etap=10001
	    {
	    if place_meeting(x,y,obj_wall) {y+=5}
	    if !place_meeting(x,y+200,obj_wall) && save_game_room_sample=0 {save_game_room_sample=1;SXMS_SFX_PlayExt(23,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if !place_meeting(x,y,obj_wall) {global.pauza=0;    depth=-1
	    animator.depth=-1;global.wychodz_z_rury_nastepny_etap=0}

    
    
	    }
	if global.wychodz_z_rury_nastepny_etap=10000
	    {
	    if place_meeting(x,y,obj_wall) {y-=1}
	    if !place_meeting(x,y,obj_wall) {global.pauza=0;    depth=-1
	    animator.depth=-1;global.wychodz_z_rury_nastepny_etap=0}

    
    
	    }
	if global.wychodz_z_rury_nastepny_etap=0
	    {
	    wychodzi_rury_w_nastepnym_etapie=1
	    }
	    }
    
    
    
    
    
	    /*
	    global.pauza=1
	depth=110000
	obj_mario_anim.depth=110000
	SXMS_SFX_PlayExt(23,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
	grawitacja=0
	sekwencja=0
	zagraj_sampel_wyjscia=0
	skrot_podazaj_speed=0


/* end script_przejscie_rurowe_na_poczatku */
}
