function script_big_movable_blocks() {
	// murek popycha od lewej



	/*

	if place_meeting(x-5,y,o_desert_moving_rock_parental)
	    {
	    blocznix=instance_place(x-5,y,o_desert_moving_rock_parental)
	    if blocznix.rodzaj<>0 && sin(degtorad(blocznix.kat))*blocznix.step_x>0
	        {
	        x+=sin(degtorad(blocznix.kat))*blocznix.step_x
	        if place_meeting(x+10,y,obj_wall) {SXMS_C_Stop();part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;wiwi=instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0);wiwi.iyor=-18} 
	        }
    
	    }
    
  
	// murek popycha od prawej
	if place_meeting(x+2,y,o_desert_moving_rock_parental)
	    {
	    for (i=0;i<20;i+=1)
	        {
	        if place_meeting(x+2,y,o_desert_moving_rock_parental) {x-=1}
	        }
        
	    }




	if place_meeting(x+5,y,o_desert_moving_rock_parental)
	    {
	    blocznix=instance_place(x+5,y,o_desert_moving_rock_parental)
	    if blocznix.rodzaj<>0 && sin(degtorad(blocznix.kat))*blocznix.step_x<0
	        {
	        x+=sin(degtorad(blocznix.kat))*blocznix.step_x
	        if place_meeting(x-10,y,obj_wall) {SXMS_C_Stop();part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;wiwi=instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0);wiwi.iyor=-18} 
	        }
    
	    }*/
	 /*   
	// mario stoi na murku
	if place_meeting(x,y+5,o_desert_moving_rock_parental) //&& sekwencja=0
	    {
	    y=ceil(y)
	    blocznix=instance_place(x,y+5,o_desert_moving_rock_parental)
	    if !place_meeting(x+sin(degtorad(blocznix.kat))*blocznix.step_x*5,y,obj_wall) {x+=sin(degtorad(blocznix.kat))*blocznix.step_x}
	    y+=cos(degtorad(blocznix.kat2))*blocznix.step_y
	    if place_meeting(x,y-8,obj_wall) {SXMS_C_Stop();part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,20);global.pauza=88;wiwi=instance_create(x+16,y+32,o_mario_dies);SXMS_SFX_PlayExt(128+round(random(1)),((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0);wiwi.iyor=-18} 
	    for(i=0;i<20;i+=1)
	        {
	        if place_meeting(x,y,obj_wall) {y-=1}
        
        
	        }
    
	    }


/* end script_big_movable_blocks */
}
