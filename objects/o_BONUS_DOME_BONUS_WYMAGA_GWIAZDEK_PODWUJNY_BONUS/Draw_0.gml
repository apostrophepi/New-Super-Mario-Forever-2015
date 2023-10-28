if getter_depther<100 {getter_depther+=1
obj_mario_anim.depth=-10000}


if global.pauza=0
    {
    if place_meeting(x,y,obj_mario) {o_HUD_tworzony_przez_gracza.dzielnik_timer=100}
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

        
        if gucio_sampel>0 {gucio_sampel-=1}
        if gucio_sampel=0 && place_meeting(x,y,obj_mario) && obj_mario.zdobyl_skrzynke_z_trzech=0 && (keyboard_check(global.ster_up) || keyboard_check(global.ster_fire)) && global.happy_stars<wymaga_gwiazdek && global.odejmuj_gwiazdeczki=0
            {
            gucio_sampel=50
            SXMS_SFX_PlayExt(324,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            
            
            }
        if place_meeting(x,y,obj_mario) && obj_mario.zdobyl_skrzynke_z_trzech=0 && (keyboard_check(global.ster_up) || keyboard_check(global.ster_fire)) && global.happy_stars>=wymaga_gwiazdek && global.odejmuj_gwiazdeczki=0
            {
            global.odejmuj_gwiazdeczki=wymaga_gwiazdek
            obj_mario.zdobyl_skrzynke_z_trzech=1
            if znikaj=1 {znikaj=1.001;fofo=instance_create(x-40,y,o_chest_wyskakujacy_bonus);fofo.rodzaj=rodzaj;fofo=instance_create(x+40,y,o_chest_wyskakujacy_bonus);fofo.rodzaj=rodzaj}
            }
            
            if znikaj>1 && znikaj<99999999999 {znikaj+=0.1+znikaj/10}
            if znikaj>=100 {if instance_number(o_magic_chest_duel_spawn)=1 {instance_create(x,y,o_zakoncz_etap_bez_flagi_skrzynkowo)};instance_destroy()}
        }
    
    
    }
    
    
    stream+=0.1
    draw_sprite_ext(global.magic_chest,0,x,y,min(0.5,image_alpha)+0.75+sin(stream)/40-grawitacja/20,min(0.5,image_alpha)+0.75-sin(stream)/40+grawitacja/20,0,c_white,image_alpha/znikaj)
    
    draw_sprite_ext(s_happy_star,0,x,y,0.95,0.95,0,c_white,image_alpha/znikaj)

draw_set_font(global.map_fonts_1)
draw_set_color(c_white)
draw_set_alpha(image_alpha/znikaj)
draw_set_halign(fa_left)
draw_set_halign(fa_top)
draw_text_ext_transformed(x+32-22,y-22,string_hash_to_newline("x"+string(wymaga_gwiazdek)),0,0,0.95,0.95,0)
draw_set_alpha(1)




    
    /*
    stream=0
image_alpha=0
sekwencja=0
grawitacja=0
timer=0

/* */
/*  */
