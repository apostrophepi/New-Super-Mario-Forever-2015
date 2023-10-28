if global.pauza<>0 {speed=0}
if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.6
    {
    seened=0
    }
    
    
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.2 {seened=0}
    
    speed=0; sekwencja=0
    
if x<obj_mario.x-5 && obj_mario_anim.size2=1 {direction=point_direction(x,y,obj_mario.x,obj_mario.y+48) speed=1; sekwencja=1;kierunek=1;if gadacz=0 {gadacz=1;SXMS_SFX_PlayExt(99,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}} 
if x>obj_mario.x+5 && obj_mario_anim.size2=-1 {direction=point_direction(x,y,obj_mario.x,obj_mario.y+48) speed=1; sekwencja=1;kierunek=-1;if gadacz=0 {gadacz=1;SXMS_SFX_PlayExt(99,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}

if sekwencja=0 {gadacz=0}



if speed<>0 {y+=sin(degtorad(lot))/2; lot+=5}
// gfx
stream+=0.25
}}

draw_sprite_ext(s_boo_glow,0,x,y+sin(degtorad(stream*10))*5,1,1,0,c_white,1)

if direction<90 {podkatem=direction}
if direction>270 && direction<360 {podkatem=direction}

if direction>90 && direction<270 {podkatem=-180+direction}




if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1.2{
if sekwencja=0 
    {
    draw_sprite_ext(s_boo_glow,0,x,y,4,4,0,c_white,1)
    
    pozycja_oczu_x=x+(sin(degtorad(podkatem+(130*kierunek)))*60)
    pozycja_oczu_y=y+(cos(degtorad(podkatem+(130*kierunek)))*60)+sin(degtorad(stream*10))*5
    
    pozycja_reki_x=x
    pozycja_reki_y=y+sin(degtorad(stream*10))*5
    kat_reki=45*kierunek+sin(stream/10)*10
    
    pozycja_reki2_x=x+sin(degtorad(podkatem+(90*kierunek)))*80
    pozycja_reki2_y=y+cos(degtorad(podkatem+(90*kierunek)))*80+sin(degtorad(stream*10))*5
    kat_reki2=125*kierunek+sin(-stream/10)*10
    
    pozycja_buzioxa_x=x+sin(degtorad(podkatem+(45*kierunek)))*60
    pozycja_buzioxa_y=y+cos(degtorad(podkatem+(45*kierunek)))*60+sin(degtorad(stream*10))*5
    buziowanie=1+sin(stream/10)/10
    
    
    
    draw_sprite_ext(s_boo_body,stream,x,y+sin(degtorad(stream*10))*5,kierunek,1,podkatem,c_white,1)
    draw_sprite_ext(s_boo_oczodoly,stream,pozycja_oczu_x,pozycja_oczu_y,kierunek,1,podkatem,c_white,1)
    
    draw_sprite_ext(s_boo_hand,stream,pozycja_reki_x,pozycja_reki_y,kierunek,1,kat_reki,c_white,1)
    draw_sprite_ext(s_boo_hand,stream,pozycja_reki2_x,pozycja_reki2_y,kierunek/1.25,1,kat_reki2,c_white,1)
    
    draw_sprite_ext(s_buziox,stream,pozycja_buzioxa_x,pozycja_buzioxa_y,buziowanie,buziowanie,0,c_white,1)
    }

    
    
if sekwencja=1
    {
    draw_sprite_ext(s_boo_glow,0,x,y,4,4,0,c_white,1)
    
    pozycja_oczu_x=x+(sin(degtorad(podkatem+(130*kierunek)))*60)
    pozycja_oczu_y=y+(cos(degtorad(podkatem+(130*kierunek)))*60)+sin(degtorad(stream*10))*5
    
    pozycja_oczu_x2=x+(sin(degtorad(podkatem+(115*kierunek)))*50)
    pozycja_oczu_y2=y+(cos(degtorad(podkatem+(115*kierunek)))*50)+sin(degtorad(stream*10))*5
    
    pozycja_reki_x=x
    pozycja_reki_y=y+sin(degtorad(stream*10))*5
    kat_reki=-125*kierunek+sin(stream/5)*20

  
    pozycja_buzioxa_x=x+sin(degtorad(podkatem+(55*kierunek)))*60
    pozycja_buzioxa_y=y+cos(degtorad(podkatem+(55*kierunek)))*60+sin(degtorad(stream*10))*5
    buziowanie=1+sin(stream/10)/10
    
    pozycja_buzioxa_x2=x+sin(degtorad(podkatem+(45*kierunek)))*70
    pozycja_buzioxa_y2=y+cos(degtorad(podkatem+(45*kierunek)))*70+sin(degtorad(stream*10))*5
    buziowanie2=sin(stream/10)*10
    
    draw_sprite_ext(s_boo_body,stream,x,y+sin(degtorad(stream*10))*5,kierunek,1,podkatem,c_white,1)
    draw_sprite_ext(s_boo_eyes,stream,pozycja_oczu_x2,pozycja_oczu_y2,kierunek,1,podkatem,c_white,1)
    draw_sprite_ext(s_boo_oczodoly,stream,pozycja_oczu_x,pozycja_oczu_y,kierunek,1,podkatem,c_white,1)
    
    
    
    draw_sprite_ext(s_buzia,stream,pozycja_buzioxa_x,pozycja_buzioxa_y,kierunek,buziowanie,podkatem/1.02,c_white,1)
    draw_sprite_ext(s_jezor,stream,pozycja_buzioxa_x2,pozycja_buzioxa_y2,kierunek,buziowanie,360+buziowanie2+podkatem/1.02,c_white,1)
    
    draw_sprite_ext(s_boo_hand,stream,pozycja_reki_x,pozycja_reki_y,kierunek,1,kat_reki,c_white,1)
    }
    
    

}
