if ixor<>global.ekran_srodek_x {
    x_przesunieto=0
    if starting=1 {x_przesunieto+=(ixor-__view_get( e__VW.XView, 0 ));ixor=__view_get( e__VW.XView, 0 )}
    if starting=0 {starting=1;ixor=__view_get( e__VW.XView, 0 )}
    x-=x_przesunieto/dzielnik-x_przesunieto*mnoznik
    
    }
if x<__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act}
if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*visible_size*1.5
    {
    draw_sprite_ext(global.bowser_statue_1,0,x,y-50*7,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_1,0,x,y-50*6,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_1,0,x,y-50*5,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_1,0,x,y-50*4,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_1,0,x,y-50*3,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_1,0,x,y-50*2,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_1,0,x,y-50,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_1,0,x,y,1,1,0,c_white,image_alpha)
    draw_sprite_ext(global.bowser_statue_2,0,x,y-50*7-30,1,1,0,c_white,image_alpha)
    stream+=szybkosc_bujania
    }
