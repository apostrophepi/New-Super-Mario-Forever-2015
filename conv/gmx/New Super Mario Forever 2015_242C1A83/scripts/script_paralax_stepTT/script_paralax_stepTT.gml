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
    y=ystart-(global.ekran_size_act-1)*168-modyfiker_y-600+(global.ekran_size_act-1)*507.1428571428571
    draw_sprite_ext(s_blurr,0,x+global.ekran_size_act*(x-__view_get( e__VW.XView, 0 ))-(x-__view_get( e__VW.XView, 0 )),y-300*global.ekran_size_act+1000,image_xscale*global.ekran_size_act,image_yscale*global.ekran_size_act,image_angle,c_white,image_alpha)
    }
