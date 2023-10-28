x=__view_get( e__VW.XView, 0 )+620*global.ekran_size_act
y=__view_get( e__VW.YView, 0 )+540*global.ekran_size_act

__background_set( e__BG.Foreground, 3, 0 )
draw_sprite_ext(s_softendo,0,__view_get( e__VW.XView, 0 )+620*global.ekran_size_act,__view_get( e__VW.YView, 0 )+560*global.ekran_size_act,wielkosc*global.ekran_size_act+hoho3/100,hoho3/100+wielkosc*global.ekran_size_act,sin(degtorad(hoho2))*hoho3,c_white,image_alpha)

draw_set_blend_mode(bm_add)
draw_sprite_ext(s_softendo,0,__view_get( e__VW.XView, 0 )+620*global.ekran_size_act,__view_get( e__VW.YView, 0 )+560*global.ekran_size_act,wielkosc*global.ekran_size_act*1.1+hoho3/100,hoho3/100+wielkosc*global.ekran_size_act*1.1,sin(degtorad(hoho2))*hoho3,c_white,-1+wielkosc)
draw_set_blend_mode(bm_normal)

if !mouse_check_button_pressed(mb_left) {klik=0}



if image_alpha<1 {image_alpha+=0.01}



if place_meeting(x,y,o_facebook_cursor)
    {
    if wielkosc<1.2 {wielkosc+=0.025}
    if mouse_check_button_pressed(mb_left) && klik=0 {klik=1;execute_shell("http://www.softendo.com",0)}
    }
    
if !place_meeting(x,y,o_facebook_cursor)
    {
    if wielkosc>1 {wielkosc-=0.025}
    }
    
    
if !place_meeting(x,y,o_facebook_cursor) {hoho1+=1}
if hoho1>150 {hoho1=0;hoho3=20}
hoho3=hoho3/1.03
hoho2+=1+hoho3
if hoho2>360 {hoho2-=360}

