if global.pauza<>0 && speed<>0 {nagraj_speed=speed; speed=0}
if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0}


if global.pauza=0{
{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {instance_destroy()}
// do przodu
    
do_przodu+=3
if do_przodu>=40 {depth=-90000}

// kill


    
    
    
if sekwencja=0 && sizer<1.5 {sizer+=0.025}
if sekwencja=0 && sizer>=1.5 {sekwencja=1}
if sekwencja>=1 && sekwencja<100 {sekwencja+=1}
if sekwencja=100 && sizer>0 {sizer-=0.1}
if sekwencja=100 && sizer<=0 {instance_destroy()}
waver+=50
    
// gfx
stream+=0.1
if ogonek<1 {ogonek+=0.05}
}}
image_xscale=sizer
image_yscale=1

image_angle=nalezy_doxx.kierunek
x=nalezy_doxx.x+20+sin(degtorad(nalezy_doxx.kierunek+90))*25
y=nalezy_doxx.y+20+cos(degtorad(nalezy_doxx.kierunek+90))*25

speed=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bullet_flame,0,nalezy_doxx.x+20+sin(degtorad(nalezy_doxx.kierunek+90))*25,nalezy_doxx.y+20+cos(degtorad(nalezy_doxx.kierunek+90))*25,sizer+(sin(degtorad(waver))*sizer)/10,1,nalezy_doxx.kierunek,c_white,1)
draw_set_blend_mode(bm_normal)}


