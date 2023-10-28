
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*2 || seened<>0 {

if global.pauza=0{

if place_meeting(x,y,o_enemy_spikey)
    {
    dodo=instance_place(x,y,o_enemy_spikey)
    with(dodo) {energy-=1}
    
    
    }
seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.8 {seened=0}
    







if sekwencja=0
    {
    timer+=1
    }
if timer>300 && sekwencja=0 {sekwencja=1;timer=0;SXMS_SFX_PlayExt(101,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if sekwencja=1 && wielkosc<wielkosc_enuta
    {
    wielkosc+=0.04
    }
if sekwencja=1 && wielkosc>=wielkosc_enuta
    {
    wielkosc=wielkosc_enuta
    sekwencja=2
    }
if sekwencja=2
    {
    timer+=1
    }
if sekwencja=2 && timer>=400
    {
    SXMS_SFX_PlayExt(102,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    sekwencja=0
    timer=0
    }
if sekwencja=0 && wielkosc>0
    {
    wielkosc=wielkosc/1.15
    }

    



// miganie oczami

if miganie_oczami_1<1000 && miganie_oczami_2<=1.01 {miganie_oczami_1=random(1000)}
if miganie_oczami_1>=990 && miganie_oczami_1<1000 {miganie_oczami_1=2000}
if miganie_oczami_1=2000 {miganie_oczami_1=0; miganie_oczami_2=2}
if miganie_oczami_2>1 {miganie_oczami_2=miganie_oczami_2/1.08}

image_xscale=wielkosc
image_yscale=wielkosc




// chodzenie

if sekwencja=2 && x<obj_mario.x && x<poczatkowe_x+zasieg_w_pikselach
    {
    x+=3
    }

if sekwencja=2 && x>obj_mario.x && x>poczatkowe_x-zasieg_w_pikselach
    {
    x-=3
    }
    
if sekwencja=2 && x>obj_mario.x {kierunek=-1}
if sekwencja=2 && x<obj_mario.x {kierunek=1}  

// gfx
stream+=0.25
}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*2 {
draw_sprite_ext(s_enut_1,0,x,y,kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc,0,c_white,1)
draw_sprite_ext(s_enut_2,0,x+(80*kierunek)*wielkosc,y-(240*wielkosc),kierunek*(wielkosc),wielkosc+sin(stream/10)*wielkosc/5,0,c_white,1)

draw_sprite_ext(s_enut_4,0,x+20*kierunek,y-(450*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)  
draw_sprite_ext(s_enut_3,0,x+kierunek,y-(390*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)
draw_sprite_ext(s_enut_3,0,x+40*kierunek,y-(390*wielkosc),kierunek*(wielkosc_enuta/2+wielkosc/2),wielkosc/miganie_oczami_2,0,c_white,1)}


}
