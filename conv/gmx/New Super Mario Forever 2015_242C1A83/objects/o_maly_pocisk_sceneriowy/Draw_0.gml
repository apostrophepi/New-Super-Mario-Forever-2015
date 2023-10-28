if global.pauza<>0 && speed<>0 {nagraj_speed=speed; speed=0}
if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed; nagraj_speed=0}


if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 && aktywowany=0 {SXMS_SFX_PlayExt(67,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku/2,-1,0,0);;aktywowany=1}


if global.pauza=0 && aktywowany=1 {
 {
 

    
    
    
    
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*2 {instance_destroy()}
timer+=1

speed=1
image_angle=direction
direction=180

// do przodu
    
do_przodu+=3

// kill

    
    
// gfx
stream+=0.1
if ogonek<1 {ogonek+=0.05}

}}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.6{


koko=point_distance(x,y,obj_mario.x,obj_mario.y)



draw_sprite_ext(s_spikey_10,0,x,y,-5/3,3/3,0,c_white,0.5/2)
draw_sprite_ext(s_big_bullet_2,0,x,y,-1/3,1/3,0,c_white,1/2)
draw_sprite_ext(s_cannon_lapa,0,x+sin(degtorad(kierunek+270))*10+10,y+cos(degtorad(kierunek+270))*20,-1/2.5,1/2.5,image_angle+sin(degtorad(stream*30))*40-120,c_white,1/2)
draw_sprite_ext(global.coin_sparcle,0,x-50,y-20,3/3,3/3,stream*30,c_white,1/2)
draw_sprite_ext(global.coin_sparcle,0,x-40,y-5,4/3,4/3,stream*10,c_white,1/2)
draw_sprite_ext(global.coin_sparcle,0,x-40,y-5,2/3,2/3,stream*10,c_white,1/2)

draw_sprite_ext(global.gfx_disc_saw_4,0,x+30,y,1,1,0,c_white,abs(sin(degtorad(stream*500)))/4)

draw_set_blend_mode(bm_add)
draw_sprite_ext(global.super_light_lamp_drogowych,0,x-40,y-5,((250-(koko))/200)*2,1,0,c_white,0.15)
draw_sprite_ext(global.super_light_lamp_drogowych,0,x-40,y-20,((250-(koko))/200),0.25,0,c_white,0.15)
draw_set_blend_mode(bm_normal)
}


