draw_sprite_ext(s_boo_glow,0,x,y+sin(kokoss)*20,1+abs(grawitacja)/2,1+abs(grawitacja)/2,obracacz,c_white,1/zdobyty)
draw_sprite_ext(s_bonus_efekter,0,x,y+sin(kokoss)*20,8,8,obracaj/4,c_white,0.15/zdobyty)
draw_sprite_ext(s_bonus_efekter,0,x,y+sin(kokoss)*20,4,4,obracaj/4,c_white,0.15/zdobyty)
draw_sprite_ext(s_bonus_efekter,0,x,y+sin(kokoss)*20,2,2,obracaj/2,c_white,0.5/zdobyty)
draw_sprite_ext(s_bonus_efekter,0,x,y+sin(kokoss)*20,1,1,obracaj,c_white,1/zdobyty)

if !instance_exists(o_ZAMIENIA_KLUCZ_NA_KORONE_DLA_ETAPOW_KONCOWYCH){
draw_sprite_ext(s_boss_key,0,x,y+sin(kokoss)*20,20/podzielnik,20/podzielnik,obracaj2,c_white,0.05/zdobyty)
draw_sprite_ext(s_boss_key,0,x,y+sin(kokoss)*20,40/podzielnik,40/podzielnik,obracaj2,c_white,0.05/zdobyty)
draw_sprite_ext(s_boss_key,0,x,y+sin(kokoss)*20,1,1,obracaj2,c_white,1/zdobyty)}

if instance_exists(o_ZAMIENIA_KLUCZ_NA_KORONE_DLA_ETAPOW_KONCOWYCH){
draw_sprite_ext(s_boss_key2,0,x,y+sin(kokoss)*20,20/podzielnik,20/podzielnik,obracaj2,c_white,0.05/zdobyty)
draw_sprite_ext(s_boss_key2,0,x,y+sin(kokoss)*20,40/podzielnik,40/podzielnik,obracaj2,c_white,0.05/zdobyty)
draw_sprite_ext(s_boss_key2,0,x,y+sin(kokoss)*20,1,1,obracaj2,c_white,1/zdobyty)}




if spadl=0{
obracaj+=1
if sekwencja=0 {obracaj2+=10}
if sekwencja<>0 {obracaj2=obracaj2/1.3}}
if spadl=1{
grawitacja=0
obracaj+=0.1
if sekwencja=0 {obracaj2+=1}
if sekwencja<>0 {obracaj2=obracaj2/1.3}}


if global.pauza=0
    {
    
    timer_to_collect+=1
    
    if timer_to_collect>=200 && collected=0 && odbijator>=-1
        {
        if place_meeting(x,y,obj_mario)
            {
            if instance_exists(o_ZAMIENIA_KLUCZ_NA_KORONE_DLA_ETAPOW_KONCOWYCH) {global.sequence_map_completed=1}
            SXMS_C_Stop()
            kefcior=round(random(1))
            if kefcior=0 {SXMS_SFX_PlayExt(25,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);}
            if kefcior=1 {SXMS_SFX_PlayExt(27,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);}
            
            collected=1
                        part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr2,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr3,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr4,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr5,1)

            part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr2,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr3,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr4,1)
part_particles_create(global.particle_map_sterring,x,y,global.part_BOOMBOOM_starr5,1)
            sekwencja=10000
            grawitacja=0
            SXMS_SFX_PlayExt(202,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
            }
        
        
        }
        
        
        
    part_type_direction(global.part_BOOMBOOM_starr41,random(360),random(360),0,0)
part_type_orientation(global.part_BOOMBOOM_starr41,random(360),random(360),10,10,1)
    if random(50)>25 && collected=0 {part_particles_create(global.particle_map_sterring,x+random(30)-random(30),y+random(30)-random(30),global.part_BOOMBOOM_starr41,1)}
    if random(50)>25 && collected=1 {part_particles_create(global.particle_map_sterring,obj_mario.x+random(30)-random(30),obj_mario.y+random(30)-random(30),global.part_BOOMBOOM_starr41,1)}
    if podzielnik<10 {podzielnik+=0.1}
    if spadl=0{
    if sekwencja=0
        {
        obracacz=-grawitacja
        if grawitacja<0 && !place_meeting(x,y-20,obj_wall) {y+=grawitacja}
        if grawitacja>0 {y+=grawitacja}
        grawitacja+=0.5
        if place_meeting(x,y,obj_wall) {sekwencja=1;if samples<=10{samples+=1;SXMS_SFX_PlayExt(165,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}
        }
    if sekwencja=1
        {
        for (i=0;i<30;i+=1)
            {
            if place_meeting(x,y,obj_wall) {y-=1}
            if odbijator<-1 {grawitacja=odbijator;sekwencja=0;odbijator=odbijator/1.01
            repeat(3){part_particles_create(global.particle_map_sterring,x+random(30)-random(30),y+30,global.part_BOOMBOOM_smoke5,1)}
            }
            
            }
        
        
        }}
        if y>__view_get( e__VW.YView, 0 )+1000 {spadl=1}
        if spadl=1
            {
            odbijator=odbijator/1.3
            if y>__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )/2 {y-=5}
            kokoss+=0.05
            
            
            
            }
    
    
    
    
    }
    
    
    /*
    sekwencja=0
grawitacja=-10
odbijator=-10
obracacz=0


/* */
if collected=1 {
if zdobyty<999999999 {zdobyty+=1+zdobyty/50}
    timer+=1
    ciurp+=1
    o_koniec_etapu.local_global=9999999
    if timer>=500 && global.time>0 {global.time-=1;global.punkty+=100;if ciurp>5 {ciurp=0;SXMS_SFX_PlayExt(108,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}
    if timer>=500 && global.time>20 {global.time-=10;global.punkty+=1000}
    
    
    
    
    if global.time<=0 {przejdz_na_mape+=1}
    
     // TWORZ BLANKER/TRANSITIONS
if przejdz_na_mape=20
    {
    instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)
    }
// MARIO POKONAL MAPE WIEC WRACA NA MAPE
if przejdz_na_mape>120
    {
    global.mario_wszedl_do_etapu=2
    global.mario_completed_stage=1

    global.map_wgraj_wartosci=1
    global.delayer=0
    global.uzyto_stoppera=0 
    global.chwilowy_stopper=0
    
    // NAGRAJ PO PRZEGRANEJ WALCE
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    hex_write(zapis2,global.hex_save_pos+1000+0,global.punkty)
    hex_write(zapis2,global.hex_save_pos+1000+1,global.zycia)
    hex_write(zapis2,global.hex_save_pos+1000+2,global.coins)
    hex_write(zapis2,global.hex_save_pos+1000+3,global.coins_red)
    hex_write(zapis2,global.hex_save_pos+1000+4,global.magic_stars)
    hex_write(zapis2,global.hex_save_pos+1000+5,global.map_uzyto_budzika)
    hex_write(zapis2,global.hex_save_pos+1000+6,global.map_uzyto_gwiazdki)
    hex_write(zapis2,global.hex_save_pos+1000+7,global.map_item_grzyby)
    hex_write(zapis2,global.hex_save_pos+1000+8,global.map_item_kwiatki)
    hex_write(zapis2,global.hex_save_pos+1000+9,global.map_item_listek)
    hex_write(zapis2,global.hex_save_pos+1000+10,global.map_item_burak)
    hex_write(zapis2,global.hex_save_pos+1000+11,global.map_item_boomer)
    hex_write(zapis2,global.hex_save_pos+1000+12,global.map_item_hammer)
    hex_write(zapis2,global.hex_save_pos+1000+13,global.map_item_duch)
    hex_write(zapis2,global.hex_save_pos+1000+14,global.map_item_bomber)
    hex_write(zapis2,global.hex_save_pos+1000+15,global.map_item_tanoki)
    hex_write(zapis2,global.hex_save_pos+1000+16,global.map_item_latacz)
    hex_write(zapis2,global.hex_save_pos+1000+17,global.map_item_gwiazdka)
    hex_write(zapis2,global.hex_save_pos+1000+18,global.map_item_budzik)
    hex_write(zapis2,global.hex_save_pos+1000+19,global.happy_stars)
    
    hex_close(zapis2)
    global.pauza=0
    room_goto(global.return_name_of_map)
    }
    
    
   
    
    }
    


/* */
/*  */
