


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {

ygrek=+15
if animsek=2 {

draw_sprite_ext(s_toad_talker_3,0,x+20,y+ygrek,0.85*kierunek,0.85,sin(degtorad(-stream+30))*50+60*kierunek,c_white,1)
draw_sprite_ext(s_toad_talker_2,0,x+20+sin(degtorad(-stream+180))*15*kierunek,y+ygrek+20+cos(degtorad(-stream+180))*5,1*kierunek,1,sin(degtorad(-stream+180))*50*kierunek,c_white,1)
draw_sprite_ext(s_toad_talker_1,0,x+20,y+ygrek,1*kierunek,1,sin(degtorad(stream))*10,c_white,1)
draw_sprite_ext(s_toad_talker_2,0,x+20+sin(degtorad(-stream))*15*kierunek,y+20+ygrek+cos(degtorad(-stream))*5,1*kierunek,1,sin(degtorad(-stream))*50*kierunek,c_white,1)
draw_sprite_ext(s_toad_talker_3,0,x+20,y+ygrek,0.85*kierunek,0.85,sin(degtorad(-stream+180+30))*50+60*kierunek,c_white,1)


}
if animsek<>2 {if hello=0 {SXMS_SFX_PlayExt(round(random(1))+119,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);hello=1}

draw_sprite_ext(s_toad_talker_4,0,x+20,y+ygrek,1,1,sin(degtorad(stream))/2,c_white,1)
draw_sprite_ext(s_toad_talker_5,0,x+20-11,y-5+ygrek,1,1,sin(degtorad(-stream+180+30))*50,c_white,1)


}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
if global.pauza=0
    {
    if animsek=0
        {
        animsek=1
        timer_max=20+random(200)
        stream+=5
        }
    if animsek=1
        {
        stream+=5
        losuj_kierunek=0
        
        timer+=1
        if timer>timer_max {timer=0;timer_max=0;animsek=2;losuj_kierunek=random(100);if losuj_kierunek<=50 {kierunek=1}; if losuj_kierunek>50 {kierunek=-1};timer_max=100+random(100);szybkosc=0.5+random(2) }
        }
    if animsek=2
        {
        hello=round(random(2))
        stream+=szybkosc*8
        timer+=1
        if timer>timer_max {animsek=0;timer=0;timer_max=0}

        if max_x>200 {kierunek=-1}
        if max_x<-200 {kierunek=1}
        if place_meeting(x+10,y-10,obj_wall)
            {
            kierunek=-1
            }
        if place_meeting(x-10,y-10,obj_wall)
            {
            kierunek=1
            }
            
        {
        
if kierunek=1 && !place_meeting(x+2+szybkosc,y-abs(szybkosc)-3,obj_wall) {x+=szybkosc;max_x+=szybkosc}
if kierunek=-1 && !place_meeting(x-2+szybkosc,y-abs(szybkosc)-3,obj_wall) {x-=szybkosc;max_x-=szybkosc}
    if place_meeting(x,y,obj_wall) {y-=1}
    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {y+=1}
    }


}
    
    
    
if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {sekwencja=1}
if sekwencja=1
    {
    if global.is_subplatforms=1
        {
        for (i=0;i<ceil(grawitacja);i+=1)
            {
            if collision_rectangle(x,y+39+i,x+32,y+40+i,o_subplatform,0,1) {y+=i;sekwencja=0; grawitacja=0;break;break;break}
            }
        }
    if grawitacja<12 {grawitacja+=0.5}
    y+=grawitacja;
    }
if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0}


        
    
    
    
    }

}
}
/*
stream=0
kierunek=-1
animsek=0
max_x=0
szybkosc=0
timer=0
timer_max=0

/* */
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
if global.pauza=0
    {
    
if variable_local_exists("generuj_dialog") {
if generuj_dialog=1
    {
    if x>obj_mario.x-100 && x<obj_mario.x+100 && y>obj_mario.y-100 && y<obj_mario.y+100
        {
        SXMS_SFX_PlayExt(121,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        generuj_dialog=2
        }
    }
if generuj_dialog=2
    {
    generuj_dialog=3
    dodor=instance_create(x,y-100,o_dialog2)
    if global.english_or_polish=0 {dodor.tekst=tekst}
    if global.english_or_polish=1 {dodor.tekst=tekst2}
    dodor.nalezy_do=id
    dodor.show_pic=show_pic
    dodor.goto_level_idz=goto_level
    }
if generuj_dialog=3 && keyboard_check(vk_enter) && x>obj_mario.x-100 && x<obj_mario.x+100 && y>obj_mario.y-100 && y<obj_mario.y+100 && klikers=0
    {
    klikers=1
    generuj_dialog=1
    }
    
if !keyboard_check(vk_enter) {klikers=0}
    
    
    
    }}}

/* */
if variable_local_exists("generuj_dialog")  {
if !instance_exists(o_dialog2) {



chmurken_jest_w_zasiegu=0
if x>obj_mario.x-100 && x<obj_mario.x+100 && y>obj_mario.y-100 && y<obj_mario.y+100 && generuj_dialog=3 {chmurken_jest_w_zasiegu=1}
if chmurken_jest_w_zasiegu=1 && sek_chmur=0 {sek_chmur=1;SXMS_SFX_PlayExt(124,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

if global.english_or_polish=0 {
fun+=0.25
if sek_chmur=1
    {
    draw_sprite_ext(s_talker_enter,fun,x+20,y-lajkonik/2+sin(dodawacz)*5,1+sin(dodawacz)/20,1+sin(dodawacz)/20,0,c_white,lajkonik/50)
    if lajkonik<100 {lajkonik+=5}
    if lajkonik>=100 && chmurken_jest_w_zasiegu=0 {sek_chmur=2}
    dodawacz+=0.1
    }
if sek_chmur=2
    {  
    draw_sprite_ext(s_talker_enter,fun,x+20,y-lajkonik/2+sin(dodawacz)*5,1+sin(dodawacz)/20,1+sin(dodawacz)/20,0,c_white,lajkonik/50)
    lajkonik=lajkonik/1.3
    if lajkonik<=1 {lajkonik=1;sek_chmur=0}
    dodawacz+=0.1
    }}
    
    
    
  if global.english_or_polish=1 {
  fun+=0.25
if sek_chmur=1
    {
    draw_sprite_ext(s_talker_enter2,fun,x+20,y-lajkonik/2+sin(dodawacz)*5,1+sin(dodawacz)/20,1+sin(dodawacz)/20,0,c_white,lajkonik/50)
    if lajkonik<100 {lajkonik+=5}
    if lajkonik>=100 && chmurken_jest_w_zasiegu=0 {sek_chmur=2}
    dodawacz+=0.1
    }
if sek_chmur=2
    {  
    draw_sprite_ext(s_talker_enter2,fun,x+20,y-lajkonik/2+sin(dodawacz)*5,1+sin(dodawacz)/20,1+sin(dodawacz)/20,0,c_white,lajkonik/50)
    lajkonik=lajkonik/1.3
    if lajkonik<=1 {lajkonik=1;sek_chmur=0}
    dodawacz+=0.1
    }}  
    
    
    }
    
    
    
}

/* */
/*  */
