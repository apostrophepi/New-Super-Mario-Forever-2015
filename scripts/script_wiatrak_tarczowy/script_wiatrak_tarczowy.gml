function script_wiatrak_tarczowy() {
	if global.pauza=0
	    {
	    temporary_obracanie=kat
	    stream+=1
	    kat+=obracanie+sin(degtorad(sinus_kat))*sinus_odleglosc
	    sinus_kat+=sinus_szybkosc
	        if temporary_obracanie<kat || temporary_obracanie>kat {
	        if point_distance(ixor,iyor,obj_mario.x,obj_mario.y)<150
	        {
	        if dzwiek_bujania>20
	            {
	            SXMS_SFX_PlayExt(105,ixor,global.glosnosc_dzwieku,-1,0,0);dzwiek_bujania=0
	            }
        
	        } else {dzwiek_bujania+=1}} else {temporary_obracanie=obracanie;dzwiek_bujania+=1}
        
        
        
        


	    }
    
	ixor=xstart+promien*sin(degtorad(kat))
	iyor=ystart+promien*cos(degtorad(kat))
	x=xstart+promien*sin(degtorad(kat))
	y=ystart+promien*cos(degtorad(kat))


	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
	draw_sprite_ext(global.gfx_disc_saw_1,0,ixor,iyor,1,1,stream*5,c_white,1)
	draw_sprite_ext(global.gfx_disc_saw_2,0,xstart,ystart,promien/40,1,point_direction(xstart,ystart,ixor,iyor),c_white,1)
	draw_sprite_ext(global.gfx_disc_saw_3,0,ixor,iyor,1,1,0,c_white,1)
	draw_sprite_ext(global.gfx_disc_saw_4,0,ixor,iyor,1,1,stream*10,c_white,abs(sin(degtorad(stream*50)))/2)
	draw_sprite_ext(global.gfx_disc_saw_4,0,ixor,iyor,-1,1,stream*10,c_white,abs(sin(degtorad(stream*50)))/2)







	}



}
