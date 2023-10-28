if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {
draw_sprite_ext(global.zjadacz_buziowy_1,0,x,y,1,1,sin(degtorad(stream))*20,c_white,1)
draw_sprite_ext(global.zjadacz_buziowy_2,0,x+sin(degtorad(0+sin(degtorad(stream))*20))*(80+20*sin(degtorad(stream*2))),y+cos(degtorad(0+sin(degtorad(stream))*20))*(80+20*sin(degtorad(stream*2))),1,1+sin(degtorad(stream*2))/2,sin(degtorad(stream))*20,c_white,1)
stream+=10}


if global.pauza=0
    {
    if y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )+400 {instance_destroy()}
    global.earth_quake=30
    cien=0
    // CIEN
    for (i=0;i<30;i+=1)
        {
        cien+=1
        if place_meeting(x,round(y/40)*40+i*40,obj_wall)
            {
            
            draw_sprite_ext(s_red_glow,0,x,round(y/40)*40+i*40+100,4,2,0,c_black,1-cien/20)
            draw_sprite_ext(s_red_glow,0,x,round(y/40)*40+i*40+100,4,2,0,c_black,1-cien/20)
            draw_sprite_ext(s_red_glow,0,x,round(y/40)*40+i*40+100,4,2,0,c_black,1-cien/20)
            break;break
            
            }
        
        
        
        
        }
    
    
    // ZJADAJ
    if sampluj_zniszczenie=1 {sampluj_zniszczenie=0;SXMS_SFX_PlayExt(21,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    y+=grawitacja
    grawitacja+=0.5
    for(i=0;i<10;i+=1){
    if place_meeting(x,y,obj_wall)
        {
        kokoz=instance_place(x,y,obj_wall)
        with(kokoz) {instance_destroy()}
            for (i=0;i<5;i+=1){
    part_particles_create(global.particle_sys_1,x+random(50),y+random(50),global.part_falling_brick,1)
    part_type_orientation(global.part_falling_brick,0,360,random(15)-random(15),0,0)}
    }
    }
    
    // kwiatki
    
        if place_meeting(x,y,o_pikny_kwiatek_1)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_pikny_kwiatek_1)
        with(kokoz) {instance_destroy()}} 
        
                if place_meeting(x,y,o_pikny_kwiatek_2_bialy)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_pikny_kwiatek_2_bialy)
        with(kokoz) {instance_destroy()}} 
        
                if place_meeting(x,y,o_pikny_kwiatek_2_bialy_wolnokrecacy)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_pikny_kwiatek_2_bialy_wolnokrecacy)
        with(kokoz) {instance_destroy()}} 
        
                if place_meeting(x,y,o_pikny_kwiatek_3_czerwony)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_pikny_kwiatek_3_czerwony)
        with(kokoz) {instance_destroy()}} 
        
                if place_meeting(x,y,o_pikny_kwiatek_3_czerwony_knypcioszek)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_pikny_kwiatek_3_czerwony_knypcioszek)
        with(kokoz) {instance_destroy()}} 
        
                if place_meeting(x,y,o_pikny_kwiatek_4_rumianek)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_pikny_kwiatek_4_rumianek)
        with(kokoz) {instance_destroy()}} 
        
                        if place_meeting(x,y,o_pikny_kwiatek_5_mak)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_pikny_kwiatek_5_mak)
        with(kokoz) {instance_destroy()}} 
    
    
    
    
    // przeciwnicy
    if place_meeting(x,y,o_enemy_goomba)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_enemy_goomba)
        with(kokoz) {instance_destroy()}}     
    if place_meeting(x,y,o_enemy_goomba_lezy)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_enemy_goomba_lezy)
        with(kokoz) {instance_destroy()}}     
    if place_meeting(x,y,o_COIN)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_COIN)
        with(kokoz) {instance_destroy()}}      
    if place_meeting(x,y,o_HAPPY_STAR_STATIC)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_HAPPY_STAR_STATIC)
        with(kokoz) {instance_destroy()}}     
    if place_meeting(x,y,o_point_block)
        {sampluj_zniszczenie=1
        kokoz=instance_place(x,y,o_point_block)
        with(kokoz) {instance_destroy()}            for (i=0;i<5;i+=1){
    part_particles_create(global.particle_sys_1,x+random(50),y+random(50),global.part_falling_brick,1)
    part_type_orientation(global.part_falling_brick,0,360,random(15)-random(15),0,0)}}      
        
        
        
        
            for (i=0;i<6;i+=1)
        {
        koko=tile_layer_find(20000,40+round(x-150+i*40),round(y/40)*40)
        if tile_exists(koko) {sampluj_zniszczenie=1;tile_delete(koko)      }
        }
        
        
    for (i=0;i<6;i+=1)
        {
        koko=tile_layer_find(10000,40+round(x-150+i*40),round(y/40)*40)
        if tile_exists(koko) {sampluj_zniszczenie=1;tile_delete(koko)}
        }
    
    
    
    }
    /*
    
    draw_sprite_ext(s_ZJADACZOR_MARKER,0,x,y,1,1,0,c_white,1)

/* */
/*  */
