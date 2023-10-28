if sekwencja=0
    {
    sekwencja=1
    if efektuj_spadniecie=0 {global.ekran_size_act=1.5}
    }
if sekwencja=1
    {
    timer+=1
    if timer>150 {timer=0;sekwencja=2;adder_scroller=50}
    }
if sekwencja=2
    {
    if room_get_name(room)="save_game_room" {global.level_death_pit=room_height+90000}
    if global.ekran_size_act>1.1 && efektuj_spadniecie=0 {global.ekran_size_act-=0.01}
    if obj_mario.x>1210 && obj_mario.x<1800 && setter<>1200 {setter=1200;adder_scroller+=50}
    if obj_mario.x<1210 && setter=1200 {setter=1000;adder_scroller-=50}
    
    if obj_mario.x<400 && setter=800 {setter=1;adder_scroller-=50}
    if obj_mario.x>400 && setter=1 {setter=2;adder_scroller+=50}
    
    
    if obj_mario.x<960 && obj_mario.x>400 && setter<>800 && setter<>2 {setter=800;adder_scroller-=150}
    if obj_mario.x>960 && (setter=800 || setter=2) {setter=0;adder_scroller+=150}
    
    if steruj_scroolem=0 && obj_mario.x>1920 {steruj_scroolem=1;steruj_scroolem_nagraj_x=x;steruj_roznica=obj_mario.x-x}
    if steruj_scroolem=1 {x=obj_mario.x-steruj_roznica;steruj_roznica=steruj_roznica/1.03
    if obj_mario.x<1920 {steruj_scroolem=3;steruj_roznica2=x-steruj_scroolem_nagraj_x}}
    if steruj_scroolem=3 {steruj_roznica2=steruj_roznica2/1.3;x=steruj_scroolem_nagraj_x+steruj_roznica2}
    if steruj_scroolem=3 && steruj_roznica2>=-0.01 && steruj_roznica2<0.01 {steruj_scroolem=0;steruj_scroolem=0}
    
    }
    
if adder_scroller<>0 {x+=adder_scroller;adder_scroller=adder_scroller/1.3}


// efektuj spadniecie

if efektuj_spadniecie>0 && efektuj_spadniecie>200
    {
    efektuj_spadniecie-=10
    global.ekran_size_act=global.ekran_size_act/1.06+0.01
    }
if efektuj_spadniecie>0 && efektuj_spadniecie<=200
    {
    x=xstart
    y=ystart
    efektuj_spadniecie-=10
    if global.ekran_size_act<1.3 {global.ekran_size_act+=0.05}
    if global.ekran_size_act>1.3 {global.ekran_size_act=1.3}
    }
    
// gdy Mario spadnie

if obj_mario.y>room_height && room_get_name(room)="save_game_room"{
with(o_SV_wysuwaj_rury_mariowej){
sekwencja=0
timer=0


wysow[0]=500
wysow[1]=500
wysow[2]=500}
efektuj_spadniecie=400
obj_mario.wychodzi_rury_w_nastepnym_etapie=0

obj_mario.save_game_room_sample=0
global.pauza=11

sekwencja=0

global.happy_stars=0
global.punkty=0
global.rodzaj_mario=1
global.check_point_slot=0 
global.wychodz_z_rury_nastepny_etap=2

o_SV_wysuwaj_rury_mariowej.sekwencja=0
o_SV_wysuwaj_rury_mariowej.timer=0
with (170475) {y=ystart}
with (170476) {y=ystart}
with (170493) {y=ystart}
with (170494) {y=ystart}
obj_mario.x=obj_mario.xstart
obj_mario.y=obj_mario.ystart

doluj_y=0

sekwencja=0
timer=0

przyciemniaj=0
trans=0
zabieraj_odleglosc=0



zniewidzialniuj_pustynie=0




niszcz_HUD=0

adder_scroller=0
setter=0
sekwencja=0
steruj_scroolem=0
steruj_scroolem_nagraj_x=0
steruj_scroolem_nagraj_x2=0
steruj_roznica=0


}

