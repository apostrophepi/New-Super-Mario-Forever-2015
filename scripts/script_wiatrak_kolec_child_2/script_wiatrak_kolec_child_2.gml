function script_wiatrak_kolec_child_2() {
	if global.pauza=0
	    {      
	    }
	    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
	    draw_sprite_ext(s_chain,0,x,y,1,1,stream,c_white,1)



}
