if global.pauza=0
{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
if instance_exists(o_SCROOL_DLA_CZOLGOW) && !place_meeting(x+20,y-10,obj_wall) && y>=room_height-160 {x+=o_SCROOL_DLA_CZOLGOW.speed}}

kick_timer+=1

if !place_meeting(x,y,obj_mario) && kick_timer>10 {kickable=1}
if kill=77
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_goomba
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
    
if kill=1
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_goomba
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
    
if kicked=1
    {
    lolo=instance_create(x,y,o_enemy_goomba_leci)
    if obj_mario_anim.size2=-1 {lolo.ixor=-8}
    if obj_mario_anim.size2=1 {lolo.ixor=8}
    instance_destroy()
    }

if timer>150 && timer<200 {
sekwencja=2
if place_meeting(x,y,obj_wall) {y-=1}
}
if timer>=200 && sekwencja=2
    {
    sekwencja=3
    iyor=-5
    }
if sekwencja=3
    {
    globalny_kat=globalny_kat/2
    if !place_meeting(x,y+iyor,obj_wall) && iyor<0 {y+=iyor}
    if iyor>0 {y+=iyor}
    iyor+=0.5
    
    if place_meeting(x,y,obj_wall) 
        {
        y=round(y)
        instance_destroy(); 
        while place_meeting(x,y,obj_wall) {y-=1}
        if !place_meeting(x,y,obj_wall) {instance_create(x,y-5,o_enemy_goomba)}
        }
    }

timer+=1
if sekwencja=0{
if timer>100 {stream+=0.2}
x+=ixor/2
ixor=ixor/1.01
if place_meeting(x,y,obj_wall) {x-=ixor/2; ixor=ixor*-1}



y+=iyor/2
if ixor<>0 {iyor+=1}
if iyor>12 {iyor=12}
if place_meeting(x,y,obj_wall) && ixor<>0 {iyor=0;ixor=0;part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,3)}

if ixor>0 {kierunek=-1}
if ixor<0 {kierunek=1}
if globalny_kat<180 && ixor<>0 {globalny_kat+=9}

stream+=0.1}
}
draw_sprite_ext(global.gfx_goomba,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),1,1,globalny_kat*kierunek+sin(stream)*40,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),-1,1,globalny_kat*kierunek-sin(stream)*40,c_white,1)

