


draw_sprite_ext(s_bomber_bonus,0,x,y,0.75,0.75,0,c_white,1)
draw_sprite_ext(s_bomber_bonus,0,x,y,0.75,0.75,0,c_red,sin(degtorad(migacz)))



if global.pauza=0
    {
    efekt+=1
    if efekt>3 {efekt=0;part_particles_create(global.particle_sys_2,x,y-20,global.part_effect_star3,1)}
    timer+=1
    if timer>200 {migacz+=10}
    if migacz>360*4 {instance_destroy();instance_create(x,y,o_explosion_bomb);SXMS_SFX_PlayExt(66,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    }



