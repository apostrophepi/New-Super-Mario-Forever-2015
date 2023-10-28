if global.pauza=0
    {
    
    
    


    if place_meeting(x,y,obj_mario) && touched=0
        {
        touched=1
        touched_kat=30
        SXMS_SFX_PlayExt(140,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    if !place_meeting(x,y,obj_mario) && touched=1
        {
        touched=0
        }
    if touched_kat>0 {touched_kat=touched_kat/1.03}
    touched_stream+=10
    if touched=1
        {
        if touched_alpha<1 {touched_alpha+=0.05}
        }
    if touched=0
        {
        if touched_alpha>0 {touched_alpha-=0.05}
        }
    
    
    if sekwencja=0
        {
        timer+=1
        if timer>=30 {timer=0;sekwencja=1
        repeat(20) {part_particles_create(global.particle_sys_1,x+random(100)-random(100),y-20+random(20)-random(20),global.part_lava_smoke,1)}
        part_particles_create(global.particle_sys_1,x+16,y,global.part_point_block,5)
        part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star,5)
        
        }
        }
    if sekwencja>=1
        {
        if image_alpha<1 {image_alpha+=0.05}
        }
    if sekwencja=1
        {
        if !place_meeting(x,y,obj_wall)
            {
            part_particles_create(global.particle_sys_1,x+random(100)-random(100),y-20+random(20)-random(20),global.part_lava_smoke,1)
            y+=grawitacja
            grawitacja+=0.1
            }
        if place_meeting(x,y,obj_wall)
            {
            sekwencja=2
            repeat(5) {effect_create_above(ef_smoke,x+random(104)-random(104),y,0.5+random(1),c_white)}
            repeat(5) {instance_create(x+random(104)-random(104),y,o_thromb_piece)}
            }
        }
    if sekwencja=2
        {
        for (i=0;i<grawitacja;i+=1)
            {
            if place_meeting(x,y,obj_wall) {y-=1}
            }
        sekwencja=3
        timer=0
        grawitacja=0
        }
    if sekwencja=3
        {
        if znikaj=1{
        if random(100)>90 {part_particles_create(global.particle_sys_1,x+random(100)-random(100),y+random(50)-random(50),global.part_effect_star,1)}
        if random(100)>90 {instance_create(x+random(50)-random(50),y+random(50)-random(50),o_coin_collect_efekt)};
        if random(100)>90 {instance_create(x+random(50)-random(50),y+random(50)-random(50),o_efekt_zdobytej_monety)}}
        
        
        if place_meeting(x,y,obj_mario) && obj_mario.zdobyl_skrzynke_z_trzech=0 && (keyboard_check(global.ster_up) || keyboard_check(global.ster_fire))
            {
            obj_mario.zdobyl_skrzynke_z_trzech=1
            if znikaj=1 {znikaj=1.001;fofo=instance_create(x,y,o_chest_wyskakujacy_bonus);fofo.rodzaj=rodzaj}
            }
            
            if znikaj>1 && znikaj<99999999999 {znikaj+=0.1+znikaj/10}
            if znikaj>=100 {if instance_number(o_magic_chest_duel_spawn)=1 {instance_create(x,y,o_zakoncz_etap_bez_flagi_skrzynkowo)};instance_destroy()}
        }
    
    
    }
    
    
    stream+=0.1
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(global.big_glow_sloneczny,0,x,y-50,2,2,-stream*5,c_white,touched_alpha/znikaj/2)
    draw_sprite_ext(global.big_glow_sloneczny,0,x,y-50,1,1,stream*10,c_white,touched_alpha/znikaj/2)
    draw_set_blend_mode(bm_normal)
    draw_sprite_ext(global.magic_chest,0,x,y,min(0.5,image_alpha)+0.5+sin(stream)/40-grawitacja/20+sin(degtorad(touched_stream*4))*touched_kat/150,min(0.5,image_alpha)+0.5-sin(stream)/40+grawitacja/20+sin(degtorad(touched_stream*4))*touched_kat/150,sin(degtorad(touched_stream))*touched_kat,c_white,image_alpha/znikaj)
    
    
    
    /*
    stream=0
image_alpha=0
sekwencja=0
grawitacja=0
timer=0

/* */
/*  */
