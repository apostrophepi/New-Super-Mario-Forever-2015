function script_paralax_step55() {
	if ixor<>global.ekran_srodek_x {
	    x_przesunieto=0
	    if starting=1 {x_przesunieto+=(ixor-__view_get( e__VW.XView, 0 ));ixor=__view_get( e__VW.XView, 0 )}
	    if starting=0 {starting=1;ixor=__view_get( e__VW.XView, 0 )}
	    x-=x_przesunieto/dzielnik-x_przesunieto*mnoznik
    
	    }
	if x<__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act}
	if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act}


	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*visible_size*image_yscale*1.5
	    {
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(global.sparcle_1,0,x-5,y-370,image_xscale*3,image_yscale*3,image_angle+stream/10,c_white,image_alpha/4+sin(degtorad(stream))/20)
	    draw_set_blend_mode(bm_normal)
	    draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,image_alpha)
	    draw_set_blend_mode(bm_add)
	    draw_sprite_ext(s_mega_sparcle_1,0,x-5,y-370,image_xscale,image_yscale,image_angle+stream/10,c_white,image_alpha/4+sin(degtorad(stream))/20)
    
	    draw_set_blend_mode(bm_normal)
	    stream+=2
	    }



}
