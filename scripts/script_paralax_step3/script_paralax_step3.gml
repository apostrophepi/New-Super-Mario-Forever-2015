function script_paralax_step3() {
	if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*visible_size{
	if ixor<>global.ekran_srodek_x {
	    x_przesunieto=0
	    if starting=1 {x_przesunieto+=(ixor-__view_get( e__VW.XView, 0 ));ixor=__view_get( e__VW.XView, 0 )}
	    if starting=0 {starting=1;ixor=__view_get( e__VW.XView, 0 )}
	    x-=x_przesunieto/dzielnik-x_przesunieto*mnoznik
    
	    }
	if x<__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act}
	if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act}



	    {
	    draw_sprite_ext(sprite_index,0,x,y,image_xscale+sin(stream)/8,image_yscale-sin(stream)/8,sin(stream)*2,c_white,abs(sin(stream)))
	    stream+=0.005
	    }}



}
