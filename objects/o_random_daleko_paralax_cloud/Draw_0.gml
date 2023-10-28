if ixor<>global.ekran_srodek_x {
    x_przesunieto=0
    if starting=1 {x_przesunieto+=(ixor-__view_get( e__VW.XView, 0 ));ixor=__view_get( e__VW.XView, 0 )}
    if starting=0 {starting=1;ixor=__view_get( e__VW.XView, 0 )}
    x-=x_przesunieto/dzielnik-x_przesunieto*mnoznik
    
    }
if x<__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act}
if x>__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )+odleglosc_przemijania*global.ekran_size_act {x=__view_get( e__VW.XView, 0 )-odleglosc_przemijania*global.ekran_size_act}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
    {
    stream+=3
    draw_sprite_ext(s_boo_glow,0,x,y+sin(degtorad(stream/2))*10,image_xscale,image_yscale,image_angle,c_white,image_alpha)
    draw_sprite_ext(chmurka,0,x,y+sin(degtorad(stream/2))*10,image_xscale+sin(degtorad(stream))/20,image_yscale-sin(degtorad(stream))/20,image_angle,c_white,image_alpha)
    }
    
    
    
    
    

/*if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {

stream+=4
draw_sprite_ext(s_boo_glow,0,x,y,2+sin(degtorad(stream))/20,2+sin(degtorad(stream))/20,0,c_white,1+sin(degtorad(stream))/5)
draw_sprite_ext(chmurka,0,x,y+sin(degtorad(stream/2))*20,image_xscale+sin(degtorad(stream))/10,image_xscale-sin(degtorad(stream))/20,0,c_white,image_alpha)
image_alpha=point_distance(x,y,obj_mario.x,obj_mario.y)/200
}




/* */
/*  */
