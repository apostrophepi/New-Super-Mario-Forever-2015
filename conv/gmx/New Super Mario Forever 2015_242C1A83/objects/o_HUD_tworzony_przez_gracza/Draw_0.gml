
// LICZNIK DUCHOWY
if global.rodzaj_mario=5 {
draw_sprite_ext(s_collected_item,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act-80*global.ekran_size_act,__view_get( e__VW.YView, 0 )+600*global.ekran_size_act-80*global.ekran_size_act+obj_mario_anim.ducher_y,1*global.ekran_size_act,1*global.ekran_size_act,sin(degtorad(obj_mario_anim.ducher_obracacz/2))*5,c_white,1)
draw_sprite_ext(s_hud_ducher,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act-72*global.ekran_size_act,__view_get( e__VW.YView, 0 )+600*global.ekran_size_act-80*global.ekran_size_act+obj_mario_anim.ducher_y,1*global.ekran_size_act-cos(obj_mario_anim.ducher_obracacz/50)/15,1*global.ekran_size_act+sin(obj_mario_anim.ducher_obracacz/50)/15,-cos(degtorad(obj_mario_anim.ducher_obracacz))*5,c_white,obj_mario_anim.duch_alpha)
draw_sprite_ext(s_hud_energy,0,__view_get( e__VW.XView, 0 )+800*global.ekran_size_act-80*global.ekran_size_act,__view_get( e__VW.YView, 0 )+600*global.ekran_size_act-20*global.ekran_size_act+obj_mario_anim.ducher_y,global.ducher_energy/1000*global.ekran_size_act,1*global.ekran_size_act,360+sin(degtorad(obj_mario_anim.ducher_obracacz/2))*2,c_white,1)
}

// Rysuj FOG

if global.fog=1
    {

    draw_set_alpha(1)
draw_background_stretched(b_caving_2_DELETE,__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 ),__view_get( e__VW.HView, 0 ))
    
    }

if global.fog=4
    {


draw_background_stretched_ext(global.background_ghosts_fog,__view_get( e__VW.XView, 0 )-100+sin(stream/10)*50,__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 )+200+sin(stream/10)*50,__view_get( e__VW.HView, 0 ),c_white,sin(stream/10)/10+0.2)

    }
    
    
if global.fog=2
    {


draw_background_stretched_ext(global.background_ghosts_fog,__view_get( e__VW.XView, 0 )-100+sin(stream/10)*50,__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 )+200+sin(stream/10)*50,__view_get( e__VW.HView, 0 ),c_white,sin(stream/10)/10+0.5)

    }
       
if global.fog=3
    {


draw_background_stretched_ext(global.background_ghosts_fog,__view_get( e__VW.XView, 0 )-100+sin(stream/10)*50,__view_get( e__VW.YView, 0 ),__view_get( e__VW.WView, 0 )+200+sin(stream/10)*50,__view_get( e__VW.HView, 0 ),c_green,sin(stream/10)/5+0.5)

    }    
    

//RYSUJ HUD


// ZYCIA
draw_sprite_ext(s_map_head_mario,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(235))*420*global.ekran_size_act,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(235))*420*global.ekran_size_act,global.ekran_size_act/1.2,global.ekran_size_act/1.2,0,c_white,0.8)

draw_set_font(global.map_fonts_1)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_halign(fa_top)
draw_text_ext_transformed(
__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(235+3.9))*(380+43.9)*global.ekran_size_act,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(235+3.9))*(380+43.9)*global.ekran_size_act,
string_hash_to_newline("x"+string(global.zycia)),0,0,global.ekran_size_act/1,global.ekran_size_act/1,0)

// MONETY

draw_sprite_ext(global.hud_coins,0,__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(205+39.2))*(320+67)*global.ekran_size_act,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(205+39.2))*(320+67)*global.ekran_size_act+sin(stream)*5*global.ekran_size_act,global.ekran_size_act/1.2,global.ekran_size_act/1.2,sin(stream/4)*20,c_white,0.75+sin(stream/10)/4)

stream+=0.1

draw_set_font(global.map_fonts_1)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_halign(fa_top)
draw_text_ext_transformed(
__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+sin(degtorad(205+3.9+39.2))*(280+43.9+67)*global.ekran_size_act,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2+cos(degtorad(205+3.9+39.2))*(280+43.9+67)*global.ekran_size_act,
string_hash_to_newline("x"+string(global.coins)),0,0,global.ekran_size_act/1,global.ekran_size_act/1,0)
draw_set_alpha(1)

// HAPPY STARS

draw_sprite_ext(s_happy_star_2,0,-1000/dzielnik+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-340*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-80*global.ekran_size_act,global.ekran_size_act,global.ekran_size_act,sin(stream/4+2)*20-abs(sin(stream/2)*30),c_white,0.75+sin(stream/10)/4)
draw_sprite_ext(s_happy_star_2,0,-1000/dzielnik+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-340*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-80*global.ekran_size_act,-global.ekran_size_act,global.ekran_size_act,sin(stream/4+2)*20+abs(sin(stream/2)*30),c_white,0.75+sin(stream/10)/4)
draw_sprite_ext(s_happy_star,0,-1000/dzielnik+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-340*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-80*global.ekran_size_act,global.ekran_size_act,global.ekran_size_act,sin(stream/4+2)*20,c_white,0.75+sin(stream/10)/4)
draw_set_font(global.map_fonts_1)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_halign(fa_top)
draw_text_ext_transformed(-1000/dzielnik+__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2-360*global.ekran_size_act,__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-60*global.ekran_size_act,
string_hash_to_newline("x"+string(global.happy_stars)),0,0,global.ekran_size_act/1,global.ekran_size_act/1,0)
draw_set_alpha(1)


if dzielnik_timer>0 && dzielnik<1000 {dzielnik+=1+dzielnik/100}
if dzielnik_timer<=0 {dzielnik=1+dzielnik/1.3}
if dzielnik_timer>0 {dzielnik_timer-=1}


// PUNKTY
kokox=0
if global.punkty<10 {kokox-=200;wafelix="0000000"}
if global.punkty>=10 && global.punkty<=99 {kokox=-200;wafelix="000000"}
if global.punkty>=100 && global.punkty<=999 {kokox=-200;wafelix="00000"}
if global.punkty>=1000 && global.punkty<=9999 {kokox=-200;wafelix="0000"}
if global.punkty>=10000 && global.punkty<=99999 {kokox=-200;wafelix="000"}
if global.punkty>=100000 && global.punkty<=999999 {kokox=-200;wafelix="00"}
if global.punkty>=1000000 && global.punkty<=9999999 {kokox=-200;wafelix="0"}
if global.punkty>=10000000 && global.punkty<=99999999 {kokox=-200;wafelix=""}


draw_set_font(global.map_fonts_1)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_right)
draw_set_halign(fa_top)
draw_text_ext_transformed(
__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+270*global.ekran_size_act+kokox*global.ekran_size_act,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-270*global.ekran_size_act,
string_hash_to_newline(wafelix+string(global.punkty)),0,0,global.ekran_size_act/1,global.ekran_size_act/1,0)

draw_set_alpha(1)


// CZAS
if global.notime=0 {
if timeup>=1 && timeup<=100 {migaj+=0.2}
if timeup=121 {migaj=migaj/1.2}}

if global.notime=0 {
draw_sprite_ext(s_mario_clock,0,
__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+290*global.ekran_size_act,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-270*global.ekran_size_act+sin(stream/2)*5*global.ekran_size_act,
0.75*global.ekran_size_act+sin(stream/2)/40*global.ekran_size_act+abs(sin(migaj)),0.75*global.ekran_size_act-sin(stream/2)/40*global.ekran_size_act+abs(sin(migaj)),sin(stream/10)*40,c_white,1)}

fofo=""
if global.time>=10 && global.time<=99 && global.notime=0 {fofo="0"}
if global.time>=0 && global.time<=9 && global.notime=0 {fofo="00"}
if global.notime=0 {
draw_set_font(global.map_fonts_1)
draw_set_color(c_white)
draw_set_alpha(1)
draw_set_halign(fa_left)
draw_set_halign(fa_top)
draw_text_ext_transformed(
__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+320*global.ekran_size_act,
__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2-270*global.ekran_size_act,
string_hash_to_newline(fofo+string(global.time)),0,0,global.ekran_size_act/1,global.ekran_size_act/1,0)
draw_set_alpha(1)}




