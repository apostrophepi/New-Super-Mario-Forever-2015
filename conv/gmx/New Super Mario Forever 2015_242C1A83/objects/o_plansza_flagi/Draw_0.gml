

obj_mario_anim.animacja=6


if wybrano>=1
    {
    wybrano+=1
    if wybrano>100 {room_goto_next()}
    if wybrano=2 {instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)}
    
    }
if wybrano=0 {
timer+=1
if timer>40
    {
    if wybor=1 && (keyboard_check(vk_enter) || mouse_check_button(mb_left)){global.english_or_polish=0;wybrano=1;SXMS_SFX_PlayExt(25,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if wybor=2 && (keyboard_check(vk_enter) || mouse_check_button(mb_left)) {global.english_or_polish=1;wybrano=1;SXMS_SFX_PlayExt(25,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    }



// WYBOR
wybor=0
if mouse_x<x+__view_get( e__VW.XView, 0 ) && mouse_x>x-200+__view_get( e__VW.XView, 0 ) && mouse_y>y-100 && mouse_y<y+100 {wybor=1}
if mouse_x>x+__view_get( e__VW.XView, 0 ) && mouse_x<x+200+__view_get( e__VW.XView, 0 ) && mouse_y>y-100 && mouse_y<y+100 {wybor=2}

if wybor=0 {wybor2=0}
if wybor2<>wybor {wybor2=wybor;

if wybor=1 {SXMS_SFX_PlayExt(108,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if wybor=2 {SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}


}


if wybor=1 {if powiekszator1<0.5 {powiekszator1+=0.05}}
if wybor<>1 {if powiekszator1>0 {powiekszator1-=0.05}}

if wybor=2 {if powiekszator2<0.5 {powiekszator2+=0.05}}
if wybor<>2 {if powiekszator2>0 {powiekszator2-=0.05}}}


// GFX

draw_sprite_ext(global.big_glow_sloneczny,0,x-100+__view_get( e__VW.XView, 0 ),y,2,2,image_angle,c_white,0.5)
draw_sprite_ext(global.big_glow_sloneczny,0,x+100+__view_get( e__VW.XView, 0 ),y,2,2,image_angle+20,c_white,0.5)
draw_sprite_ext(global.big_glow_sloneczny,0,x-100+__view_get( e__VW.XView, 0 ),y,1,1,image_angle*1.4,c_white,0.75)
draw_sprite_ext(global.big_glow_sloneczny,0,x+100+__view_get( e__VW.XView, 0 ),y,1,1,image_angle*1.4+20,c_white,0.75)
image_angle+=0.5




draw_set_blend_mode(bm_add)
draw_sprite_ext(global.flaga_english,0,x-100+__view_get( e__VW.XView, 0 ),y,wielkosc*1.3+sin(degtorad(stream))/(dzielnik+15),wielkosc*1.3-sin(degtorad(stream))/(dzielnik+15),0,c_white,0.1)
draw_sprite_ext(global.flaga_polish,0,x+100+__view_get( e__VW.XView, 0 ),y,wielkosc*1.3-sin(degtorad(stream))/(dzielnik+15),wielkosc*1.3+sin(degtorad(stream))/(dzielnik+15),0,c_white,0.1)
draw_set_blend_mode(bm_normal)


draw_sprite_ext(global.flaga_english,0,x-100+__view_get( e__VW.XView, 0 ),y,powiekszator1+wielkosc+sin(degtorad(stream))/(dzielnik+15),powiekszator1+wielkosc-sin(degtorad(stream))/(dzielnik+15),0,c_white,1)
draw_sprite_ext(global.flaga_polish,0,x+100+__view_get( e__VW.XView, 0 ),y,powiekszator2+wielkosc-sin(degtorad(stream))/(dzielnik+15),powiekszator2+wielkosc+sin(degtorad(stream))/(dzielnik+15),0,c_white,1)

stream+=5
if wielkosc<1 {wielkosc+=0.01}
dzielnik=dzielnik/1.09


{
    draw_set_font(global.map_fonts_1)
    draw_set_color(c_white)
    draw_set_alpha(alphar1)
    draw_set_halign(fa_center)
    draw_set_valign(fa_middle)
    draw_text_transformed(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+350,string_hash_to_newline("Please Choose language"),wielkosc+wielkor,wielkosc+wielkor,0)
    draw_set_alpha(alphar2)
    draw_text_transformed(__view_get( e__VW.XView, 0 )+400,__view_get( e__VW.YView, 0 )+350,string_hash_to_newline("Proszę Wybierz Język"),wielkosc+wielkor,wielkosc+wielkor,0)
    draw_set_alpha(alphar0)

}

timer+=1
if timer>0 && timer<200
    {
    if alphar1<1 {alphar1+=0.05}
    if alphar2>0 {alphar2-=0.05}
    
    }
if timer>200 && timer<400
    {
    if timer=202 {wielkor=1}
    if alphar1>0 {alphar1-=0.05}
    if alphar2<1 {alphar2+=0.05}
    }    
if timer>=400
    {
    wielkor=1
    timer=0
    }  
if wielkor>0 {wielkor=wielkor/1.1}
    

