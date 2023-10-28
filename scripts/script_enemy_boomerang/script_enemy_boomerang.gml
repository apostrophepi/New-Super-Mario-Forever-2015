function script_enemy_boomerang() {
	if global.pauza=0
	    {
	    powrot+=1
	    sampel+=1
	    if sampel>35 {sampel=0;SXMS_SFX_PlayExt(76,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
	    if instance_exists(nalezy_do)
	        {
	        if powrot>80
	            {
	            desdir=point_direction(x,y,nalezy_do.x,nalezy_do.y)
	            if abs(direction-desdir)<=180 {if direction<desdir direction+=4 else direction-=4}
	            else {if direction<desdir direction-=4 else direction+=4}
	            }
	        }
	    if !instance_exists(nalezy_do)
	        {
	        if powrot>80 && powrot<140
	            {
	            desdir=point_direction(x,y,xstart,ystart)
	            if abs(direction-desdir)<=180 {if direction<desdir direction+=4 else direction-=4}
	            else {if direction<desdir direction-=4 else direction+=4}
	            }
	        }   
            
        
        
        
        
	    if powrot>150 && place_meeting(x,y,o_hammer_bros_boomerang)
	        {
	        koko=instance_place(x,y,o_hammer_bros_boomerang)
	        if koko.id=nalezy_do {instance_destroy()}
	        }
	    if powrot>130 && powrot<180 && speed>1 {speed-=0.05}
	    if powrot>180 && speed<8 {speed+=0.05}
    
	    if !instance_exists(nalezy_do) && point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.2 {instance_destroy()}
    
	    image_angle+=5
	    }
	if global.pauza<>0 && zapamietaj_predkosc=0
	    {
	    zapamietaj_predkosc=speed
	    speed=0
	    }
    
	    draw_sprite_ext(s_enemy_boomerang,0,x+18,y+18,1,1,image_angle,c_white,1)
    
    
    
    
    

    
    
    
    
    



}
