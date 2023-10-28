    {
    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {instance_destroy()}
    // watered
    if global.pauza=0{
    if place_meeting(x,y,o_water_define) {watered=3}
    if !place_meeting(x,y,o_water_define) {watered=1}
    if watered>1 && iyor>4 {iyor=4}
    
// execute positions

    if (obj_mario.szybkosc<-10 || obj_mario.szybkosc>10) && coto<6
        {
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong2,1)
        }
    if coto<>7 && coto<>8 {x+=ixor/watered}
    if coto<>7 && coto<>8 {y+=iyor/watered}
    
    if !place_meeting(x,y+1,obj_wall) {iyor+=0.2}
    if coto<>7 && coto<>8 {image_angle-=ixor*2/watered}
    
    if coto<>7 && coto<>8 {obracacz+=ixor/4/watered}}
    
    
    if coto=0 {draw_sprite_ext(global.gfx_rzodkiewa,0,x,y,0.75,0.75,image_angle,c_white,1)}
    if coto=1 {draw_sprite_ext(global.gfx_rzodkiewa2,0,x,y,0.75,0.75,image_angle,c_white,1)}
    if coto=2 {draw_sprite_ext(global.gfx_rzodkiewa3,0,x,y,0.75,0.75,image_angle,c_white,1)}
    if coto=3 {draw_sprite_ext(global.gfx_rzodkiewa4,0,x,y,0.75,0.75,image_angle,c_white,1)}
    if coto=4 {draw_sprite_ext(global.gfx_rzodkiewa5,0,x,y,0.75,0.75,image_angle,c_white,1)}
    if coto=5 {draw_sprite_ext(global.gfx_rzodkiewa6,0,x,y,0.75,0.75,image_angle,c_white,1)}
    
    if coto=0{
    draw_sprite_ext(global.gfx_lisciong_1,0,x+18*sin(degtorad(image_angle+180)),y+18*cos(degtorad(image_angle+180)),0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x+18*sin(degtorad(image_angle+180)),y+18*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x+18*sin(degtorad(image_angle+180)),y+18*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+image_angle+obracacz,c_white,1)
    
    
    if global.pauza=0 {
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    
    }}
    
    if coto=1{
    draw_sprite_ext(global.gfx_lisciong_1,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+image_angle+obracacz,c_white,1)
    
    if global.pauza=0 {
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    }}
    
    if coto=2{
    draw_sprite_ext(global.gfx_lisciong_1,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+image_angle+obracacz,c_white,1)
    
    if global.pauza=0 {
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    }}
    
    if coto=3{
    draw_sprite_ext(global.gfx_lisciong_1,0,x+18*sin(degtorad(image_angle+180)),y+20*cos(degtorad(image_angle+180)),0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x+18*sin(degtorad(image_angle+180)),y+20*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x+18*sin(degtorad(image_angle+180)),y+20*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+image_angle+obracacz,c_white,1)
    
    if global.pauza=0 {
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    }}
    
    if coto=4{
    draw_sprite_ext(global.gfx_lisciong_1,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+image_angle+obracacz,c_white,1)
    
    if global.pauza=0 {
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    }}
    
if coto=5{
    draw_sprite_ext(global.gfx_lisciong_1,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),0.8,0.65+sin(promien)/5,sin(promien)*(10+trzasacz2)+40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_2,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/6,sin(promien)*(9+trzasacz2)-40+image_angle+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lisciong_3,0,x+18*sin(degtorad(image_angle+180)),y+10*cos(degtorad(image_angle+180)),-0.8,0.65-sin(promien)/10,sin(promien)*(5+trzasacz2)-60+image_angle+obracacz,c_white,1)
    
    if global.pauza=0 {
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
        
    }}
    
if coto=6{
    draw_sprite_ext(global.gfx_point_brick_alone,0,x,y,0.8,0.8,40+image_angle+obracacz,c_white,1)
    
    
    if global.pauza=0 {
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {    
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
        
    }}
    
if coto=8{
draw_sprite_ext(global.gfx_point_brick_alone2,0,x,y,0.8+timer,0.8+timer,image_angle,c_white,1)
    if global.pauza=0 {
    if timer2=0 {mask_index=s_slide_block_mask;timer2=1; ixor=8*obj_mario_anim.size2}
    if !place_meeting(x,y+1,obj_wall) {iyor+=0.4}
    y+=iyor/watered
    for (i=0;i<20;i+=1) {if place_meeting(x,y,obj_wall) {y-=1;iyor=0}}
    if place_meeting(x,y+1,obj_wall) {part_particles_create(global.particle_sys_2,x+random(16)-random(16),y+16,global.part_effect_star4,1)}

    if timer<0.2 {timer+=0.05}
    
    
    x+=ixor/watered
    
    if place_meeting(x,y,o_point_brick_alone) {koko=instance_place(x,y,o_point_brick_alone);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_alone_point) {koko=instance_place(x,y,o_point_brick_alone_point);koko.zniszczony_od_muszli=1;part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    
    
    
    if place_meeting(x,y,o_boss_bowser) {koko=instance_place(x,y,o_boss_bowser);with(koko){energy-=25};part_particles_create(global.particle_sys_1,x,y,global.part_effect_lisciong,12);instance_destroy();SXMS_SFX_PlayExt(65,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_smiechor) {koko=instance_place(x,y,o_point_block);koko.destroy=2;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_block) {koko=instance_place(x,y,o_point_block);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

    
    if place_meeting(x,y,o_point_brick_coiner) {koko=instance_place(x,y,o_point_brick_coiner);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_brick_wyciagacz) {koko=instance_place(x,y,o_point_brick_wyciagacz);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_red_activator) {koko=instance_place(x,y,o_point_red_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_blue_activator) {koko=instance_place(x,y,o_point_blue_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_green_activator) {koko=instance_place(x,y,o_point_green_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_purple_activator) {koko=instance_place(x,y,o_point_purple_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_pink_activator) {koko=instance_place(x,y,o_point_pink_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_gold_activator) {koko=instance_place(x,y,o_point_gold_activator);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_point_buziol_solid) {koko=instance_place(x,y,o_point_buziol_solid);koko.destroy=1;part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,obj_wall) {part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick2,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        part_particles_create(global.particle_sys_1,x,y,global.part_falling_brick,12);instance_destroy();SXMS_SFX_PlayExt(63,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    }}
    


        
        
if coto=7{
if global.pauza=0 {
    obracacz+=ixor*-1/watered
    image_xscale=1.55
    image_yscale=1.55
    
    y+=iyor/watered
    if place_meeting(x,y+iyor,obj_wall) {for (i=0;i<iyor+5;i+=1) {if place_meeting(x,y,obj_wall) {y-=1}} ;iyor=iyor*-1; iyor=iyor/2}
    if place_meeting(x,y,obj_wall) {if iyor>0 {iyor=0;y-=1}}
    ixor=ixor/1.01
    
    
    x+=ixor/watered
    if place_meeting(x,y,obj_wall)
        {
        if ixor>0 {for (i=0;i<ixor+1;i+=1){if place_meeting(x,y,obj_wall){x-=1}}}
        if ixor<0 {for (i=0;i<abs(ixor)+1;i+=1){if place_meeting(x,y,obj_wall){x+=1}}}
        ixor=ixor*-1
        }
        
    part_particles_create(global.particle_sys_2,x+32*sin(degtorad(image_angle+180+obracacz))+random(10)-random(10),y+32*cos(degtorad(image_angle+180+obracacz))+random(10)-random(10),global.part_effect_star3,1)

    timer+=1
    if timer>150 {timer2+=1}
    if timer2>4 {timer2=0;if timer3=0 {timer3=1;break;break}; if timer3=1 {timer3=0;break;break}}  
    if place_meeting(x,y,o_explosion_bomb_marker) && timer<247 {timer=247} 
    if timer>250 {instance_destroy(); instance_create(x,y,o_explosion_bomb);SXMS_SFX_PlayExt(66,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    }    
        
    
//draw_sprite_ext(mask_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,1)
    if timer3=0 {draw_sprite_ext(global.gfx_bomba,0,x,y,1,1,image_angle+obracacz,c_white,1)}
    if timer3=1 {draw_sprite_ext(global.gfx_bomba2,0,x,y,1,1,image_angle+obracacz,c_white,1)}
    }
    }

