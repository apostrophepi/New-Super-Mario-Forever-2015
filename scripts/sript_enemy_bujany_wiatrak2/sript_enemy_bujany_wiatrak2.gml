function sript_enemy_bujany_wiatrak2() {
	if global.pauza=0
	{
	    {   
	    x=start_x
	    y=start_y
    

    
    

        
	    kat=kat_poczatkowy+sin(degtorad(szybkosc_dodana+randomizer))*promien_bujania
	    szybkosc_dodana+=szybkosc
	    if szybkosc_dodana>360 {szybkosc_dodana=0}
    
	    dzwiek_bujania+=1
	        if point_distance(x,y,obj_mario.x,obj_mario.y)<220
	        {
	        if dzwiek_bujania>20
	            {
	            if szybkosc_dodana>170 && szybkosc_dodana<190 {SXMS_SFX_PlayExt(104,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);dzwiek_bujania=0}
	            if szybkosc_dodana>350 || szybkosc_dodana<10 {SXMS_SFX_PlayExt(104,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);dzwiek_bujania=0}
	            }
        
	        }
        
        
	    }}


    
	    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4 {

	for(i=0;i<dlugosc;i+=1)
	        {
	        draw_sprite_ext(s_chain,i,
	        start_x+sin(degtorad(kat+2*i*sin(degtorad(kat))))*(odleglosc*i),
	        start_y+cos(degtorad(kat+2*i*sin(degtorad(kat))))*(odleglosc*i),
	        1,1,kat+90+4*i*sin(degtorad(kat)),c_gray,1)
	        }
        

        
	        }



}
