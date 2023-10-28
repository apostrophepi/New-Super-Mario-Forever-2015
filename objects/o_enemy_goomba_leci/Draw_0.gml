if global.pauza=0
{
timer+=1
if place_meeting(x,y,o_enemy_goomba)
    {
    jojo=instance_place(x,y,o_enemy_goomba)
    with(jojo) {energy-=1}
    SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);instance_destroy(); instance_create(x,y,o_coin_falling);part_particles_create(global.particle_sys_2,x+32,y+32,global.part_effect_kick,1)
    //{part_particles_create(global.particle_sys_1,x+random(50),y+random(50),global.part_effect_smoke,5)}
    repeat(10) {part_particles_create(global.particle_sys_2,x+random(50),y+random(50),global.part_effect_star5_gravity,1)}
    }
if timer>60 {SXMS_SFX_PlayExt(20,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);instance_destroy(); instance_create(x,y,o_coin_falling);part_particles_create(global.particle_sys_2,x+32,y+32,global.part_effect_kick,1)}
x+=ixor
ixor=ixor/1.01
if place_meeting(x,y,obj_wall) {x-=ixor/2; ixor=ixor*-1}


y+=iyor/2
if ixor<>0 {iyor+=1}
if iyor>12 {iyor=12}
if place_meeting(x,y,obj_wall) {y-=iyor;iyor=iyor*-1}
globalny_kat+=8

}
draw_sprite_ext(global.gfx_goomba,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),1,1,globalny_kat*kierunek+sin(stream)*40,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),-1,1,globalny_kat*kierunek-sin(stream)*40,c_white,1)

