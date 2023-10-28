if global.pauza=0
{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
if instance_exists(o_SCROOL_DLA_CZOLGOW) && !place_meeting(x+20,y,obj_wall) && y>=room_height-160 {x+=o_SCROOL_DLA_CZOLGOW.speed}}

    //if !place_meeting(x+2,y,obj_wall) && y>room_height-160 {x+=o_SCROOL_DLA_CZOLGOW.speed}
    //if sekwencja=1 && !place_meeting(x+speed+1,y,obj_wall) {x+=o_SCROOL_DLA_CZOLGOW.speed}
    
    
    
    
    
    
kick_timer+=1
if y>room_height+180 {instance_destroy()}


if place_meeting(x,y,obj_wall) {y-=1}

if !place_meeting(x,y,obj_mario) && kick_timer>20 {kickable=1}

if kill=77 && jaka_grafika<>1
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if jaka_grafika=0 {lolo.grafika=global.gfx_troopa_shell}
    if jaka_grafika=1 {lolo.grafika=s_buzzy_beetle_2}
    if jaka_grafika=2 {lolo.grafika=global.gfx_troopa_shell_2}
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
    
if kill=1 
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if jaka_grafika=0 {lolo.grafika=global.gfx_troopa_shell}
    if jaka_grafika=1 {lolo.grafika=s_buzzy_beetle_2}
    if jaka_grafika=2 {lolo.grafika=global.gfx_troopa_shell_2}
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
if kill=10
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if jaka_grafika=0 {lolo.grafika=global.gfx_troopa_shell}
    if jaka_grafika=1 {lolo.grafika=s_buzzy_beetle_2}
    if jaka_grafika=2 {lolo.grafika=global.gfx_troopa_shell_2}
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }   
    
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if jaka_grafika=0 {lolo.grafika=global.gfx_troopa_shell}
    if jaka_grafika=1 {lolo.grafika=s_buzzy_beetle_2}
    if jaka_grafika=2 {lolo.grafika=global.gfx_troopa_shell_2}
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }   

if kicked=1
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    
    
    lolo=instance_create(x,y,o_enemy_troopa_leci)
    lolo.jaka_grafika=jaka_grafika
    lolo.energy=energy
    if obj_mario_anim.size2=-1 {lolo.ixor=-8}
    if obj_mario_anim.size2=1 {lolo.ixor=8}
    instance_destroy()
    }
if timer>250 {stream+=0.1}
if timer>320 {stream+=0.5}
if timer>350 && timer<400 {
sekwencja=2
if place_meeting(x,y,obj_wall) {y-=0.5}
}
if timer>=400 && sekwencja=2
    {
    sekwencja=3
    iyor=-5
    }
if sekwencja=3
    {
    globalny_kat=globalny_kat/2
    y+=iyor
    iyor+=0.5
    if place_meeting(x,y,obj_wall)
        {
        instance_destroy(); 
        if jaka_grafika=0 {instance_create(x,y-15,o_enemy_troopa)}
        if jaka_grafika=1 {instance_create(x,y-15,o_enemy_buzzy_beetle)}
        if jaka_grafika=2 {instance_create(x,y-15,o_enemy_troopa_red)}
        }
    }

timer+=1
if sekwencja=0{
if !place_meeting(x+ixor,y,obj_wall) {x+=ixor/2}
ixor=ixor/1.01
if place_meeting(x+ixor,y,obj_wall) {x-=ixor/2; ixor=ixor*-1}



if iyor<=0 && !place_meeting(x,y+iyor-1,obj_wall) {y+=iyor/2}
if iyor>0 {y+=iyor/2}



if ixor<>0 {iyor+=1}
if iyor>12 {iyor=12}
if place_meeting(x,y,obj_wall) && ixor<>0 {iyor=0;ixor=0;part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)}

if ixor>0 {kierunek=-1}
if ixor<0 {kierunek=1}
if globalny_kat<180 && ixor<>0 {globalny_kat+=9}
obracator+=obracaj_od_uderzenia
obracaj_od_uderzenia=obracaj_od_uderzenia/1.3


}
}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
if jaka_grafika=0 {draw_sprite_ext(global.gfx_troopa_shell,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek+obracator,c_white,1)}
if jaka_grafika=1 {draw_sprite_ext(s_buzzy_beetle_2,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek+obracator,c_white,1)}
if jaka_grafika=2 {draw_sprite_ext(global.gfx_troopa_shell_2,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek+obracator,c_white,1)}}
