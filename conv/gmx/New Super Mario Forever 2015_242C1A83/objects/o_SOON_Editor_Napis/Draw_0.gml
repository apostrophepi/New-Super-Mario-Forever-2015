    if global.english_or_polish=0 {
    napis="SOON IN NEW VERSION!"

    }
    
    if global.english_or_polish=1 {
    napis="JUŻ NIEDŁUGO W NOWEJ WERSJI!"}
 dodawacz_promien1=0.2
    dodawacz1+=5
    
    if timer<60 {if alphar<1 {alphar+=0.1}}
    if timer>=60 {alphar=alphar/1.1;if alphar<=0.01 {instance_destroy()}}
    timer+=1
    
    draw_set_color(c_black)
    draw_set_alpha(alphar/4)
    draw_rectangle(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-250*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-50*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act*60,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+250*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+50*global.ekran_size_act-sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act*60,0)
    draw_rectangle(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-250*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act*60,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-50*global.ekran_size_act,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+250*global.ekran_size_act-sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act*60,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+50*global.ekran_size_act,0)
    draw_set_alpha(1)
    
    draw_set_font(global.map_fonts_1)
    draw_set_color(c_white)
    draw_set_alpha(alphar)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text_transformed(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2,string_hash_to_newline(napis),1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,1*global.ekran_size_act+sin(degtorad(dodawacz1))*dodawacz_promien1*global.ekran_size_act,0)
    draw_set_alpha(1)

