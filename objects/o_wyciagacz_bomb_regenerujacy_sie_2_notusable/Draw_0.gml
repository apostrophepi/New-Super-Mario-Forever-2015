if global.pauza=0
    {
    timer+=1
    if timer=210 {SXMS_SFX_PlayExt(208,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if timer>200 {dzielnik=dzielnik/1.1}
    if dzielnik<=1 {instance_destroy();koko=instance_create(x,y,o_wyciagacz_bomb_regenerujacy_sie); koko.promien=promien}
    }

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

if timer>200 {
efektor=abs(sin(degtorad(ad_kat))*ad_promien)
ad_kat+=ad_adder
ad_adder+=0.5
ad_promien=ad_promien/1.03
}


draw_sprite_ext(global.gfx_lisciong_1,0,x+20,y+45,efektor*1.2+1/dzielnik,efektor+(0.75+sin(promien)/5)/dzielnik,(sin(promien)*10+40)+efektor*5,c_white,20/dzielnik)
draw_sprite_ext(global.gfx_lisciong_2,0,x+20,y+45,-efektor*1.4+-1/dzielnik,efektor+(0.75-sin(promien)/6)/dzielnik,(sin(promien)*9-40)-efektor*5,c_white,20/dzielnik)
draw_sprite_ext(global.gfx_lisciong_3,0,x+20,y+45,-efektor*1.2+-1/dzielnik,efektor+(0.75-sin(promien)/10)/dzielnik,(sin(promien)*5-60)-efektor*5,c_white,20/dzielnik)

promien+=0.02

} // end of deactivator





