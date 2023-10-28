if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5{
draw_sprite_ext(s_map_castle_3,0,x,y+400,1,1,bujanie+sin(degtorad(bujacz))*2,c_white,1)
bujacz+=5+trzesator
if bujacz>360 {bujacz=0}

//draw_sprite_ext(s_map_castle_flag,0,x+sin(degtorad(180))*(400),y+sin(koko)*3+dodo+40+cos(degtorad(180))*(400),1+sin(koko*30)/10,1+sin(koko*20)/20,360+sin(koko*25)*10,c_white,1)
draw_sprite_ext(s_map_castle_flag,0,-sin(degtorad(bujacz))*14+x+sin(degtorad(180+bujanie))*(370-flager),y+sin(koko)*3+400+cos(degtorad(180+bujanie))*(370-flager),1+sin(koko*30)/10,1+sin(koko*20)/20,360+sin(koko*25)*10+bujanie+sin(degtorad(bujacz))*2,c_white,1)
draw_sprite_ext(s_map_castle_point,0,-sin(degtorad(bujacz))*14+x+sin(degtorad(180+bujanie))*400,y+400+cos(degtorad(180+bujanie))*400,1,1,0,c_white,1)}

dodo=sin(koko*5+2)*4
koko+=0.005
if trzesator>0 {trzesator=trzesator/1.3}
if global.pauza<>0 {bujacz=bujacz/1.3}
if global.pauza=0
    {
    
    if place_meeting(x,y,obj_mario) && obj_mario.statued=0 && !instance_exists(obj_mario_duch)
        {
        global.sequence_level_completed=1
        SXMS_C_Stop()
        if sampeling=0 {trzesator=300;sampeling=1;SXMS_SFX_PlayExt(61,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
        obj_mario_anim.animacja=40
        if y>obj_mario.y {fifi=instance_create(obj_mario.x,obj_mario.y,o_cyferkownia);fifi.wartosc=10000;global.pauza=100;local_global=10;timer=0;global.punkty+=10000}
        if y<=obj_mario.y && y+64>obj_mario.y {fifi=instance_create(obj_mario.x,obj_mario.y,o_cyferkownia);fifi.wartosc=1000;global.pauza=100;local_global=1;global.punkty+=1000}
        if y+64<=obj_mario.y && y+128>obj_mario.y {fifi=instance_create(obj_mario.x,obj_mario.y,o_cyferkownia);fifi.wartosc=500;global.pauza=100;local_global=1;global.punkty+=500}
        if y+128<=obj_mario.y && y+256>obj_mario.y {fifi=instance_create(obj_mario.x,obj_mario.y,o_cyferkownia);fifi.wartosc=250;global.pauza=100;local_global=1;global.punkty+=250}
        if y+256<=obj_mario.y && y+300>obj_mario.y {fifi=instance_create(obj_mario.x,obj_mario.y,o_cyferkownia);fifi.wartosc=100;global.pauza=100;local_global=1;global.punkty+=100}
        if y+300<=obj_mario.y && y+500>obj_mario.y {fifi=instance_create(obj_mario.x,obj_mario.y,o_cyferkownia);fifi.wartosc=1;global.pauza=100;local_global=1;global.punkty+=1}
        
        if obj_mario_anim.size2>0 {obj_mario.x=x-30*obj_mario_anim.size2}
        if obj_mario_anim.size2<0 {obj_mario.x=x+0*obj_mario_anim.size2}
        obj_mario.szybkosc=0
        obj_mario.grawitacja=0
        obj_mario.sekwencja=0
        obj_mario.block_sterring=1
        
        }
    }
if local_global=11
    {
    if instance_exists(o_scrooling_ustaw_speed_i_kierunek) {with(o_scrooling_ustaw_speed_i_kierunek) {x+=3}}
    timer+=1
    if timer>=50 {local_global=10;timer=0}
    obj_mario.szybkosc=0
    obj_mario.grawitacja=0
    obj_mario.sekwencja=0
    obj_mario.block_sterring=1
    obj_mario_anim.animacja=40
    }
    
if local_global=1
    {
    if instance_exists(o_scrooling_ustaw_speed_i_kierunek) {with(o_scrooling_ustaw_speed_i_kierunek) {x+=3}}
    timer+=1
    if timer>=50 {local_global=2;timer=0;SXMS_SFX_PlayExt(28,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    obj_mario.szybkosc=0
    obj_mario.grawitacja=0
    obj_mario.sekwencja=0
    obj_mario.block_sterring=1
    obj_mario_anim.animacja=40
    }
if local_global=2
    {
    if instance_exists(o_scrooling_ustaw_speed_i_kierunek) {with(o_scrooling_ustaw_speed_i_kierunek) {x+=3}}
    if obj_mario.y<y+320 {obj_mario.y+=3; obj_mario_anim.ruchanko_pod_koniec_etapu+=15}
    if flager<350 {flager+=3}
    
    obj_mario.szybkosc=0
    obj_mario.grawitacja=0
    obj_mario.sekwencja=0
    obj_mario.block_sterring=1
    obj_mario_anim.animacja=40
    if obj_mario.y>=y+320 && flager>=350 {local_global=3;obj_mario.grawitacja=-14;obj_mario.sekwencja=1;timer=0;}
    }
if local_global=3
    {
    if instance_exists(o_scrooling_ustaw_speed_i_kierunek) {with(o_scrooling_ustaw_speed_i_kierunek) {x+=3}}
    timer+=1
    if timer=100 {SXMS_SFX_PlayExt(29,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if timer>=120 {local_global=4;timer=0}
    if samploza=0 {SXMS_SFX_PlayExt(27,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);samploza=1}
    if obj_mario.sekwencja<>0 {obj_mario.x+=2;obj_mario_anim.animacja=3;if grawiton>0 {obj_mario.grawitacja=-grawiton;grawiton-=0.5}}
    }
if local_global=4
    {
    if instance_exists(o_scrooling_ustaw_speed_i_kierunek) {with(o_scrooling_ustaw_speed_i_kierunek) {x+=3}}
    obj_mario_anim.animacja=0
    if obj_mario.x<gdzie_idzie.x-10 {obj_mario.szybkosc=3}
    if obj_mario.x>gdzie_idzie.x+10 {obj_mario.szybkosc=-3}
    if obj_mario.x>=gdzie_idzie.x-10 && obj_mario.x<=gdzie_idzie.x+10 {obj_mario.szybkosc=obj_mario.szybkosc/1.3;szybkosc=0;if obj_mario_anim.image_alphar>0 {obj_mario_anim.image_alphar-=0.04}}
    timer+=1
    ciurp+=1
    if timer>=200 && obj_mario_anim.image_alphar<=0 && global.time>0 {global.time-=1;global.punkty+=100;if ciurp>5 {ciurp=0;SXMS_SFX_PlayExt(108,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}}
    if timer>=200 && obj_mario_anim.image_alphar<=0 && global.time>20 {global.time-=10;global.punkty+=1000}
    if global.time<=0 {przejdz_na_mape+=1}
    }
    
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
    
    // ODZNACZ CHECK POINT
    global.chpoint_lvl_selected=0
    global.chpoint_id=0
    global.chpoint_sublevel=0


    room_goto(global.return_name_of_map)
    }
    
if local_global=10
    {
    if instance_exists(o_scrooling_ustaw_speed_i_kierunek) {with(o_scrooling_ustaw_speed_i_kierunek) {x+=3}}
    if samploza_bujania=0 && bujaj>50 {samploza_bujania=1;SXMS_SFX_PlayExt(26,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if obj_mario_anim.size2>0 {obj_mario.x=x-30*obj_mario_anim.size2+sin(degtorad(180+bujanie))*400}
    if obj_mario_anim.size2<0 {obj_mario.x=x-0*obj_mario_anim.size2+sin(degtorad(180+bujanie))*400}  
        
        
    obj_mario.y=y-20+400+cos(degtorad(180+bujanie))*400
    bujanie=sin(degtorad(bujaj))*moc_bujania
    if moc_bujania<70 {moc_bujania+=0.6}
    if bujaj<260 {bujaj+=2;}
    if bujaj>=260
    {
    repeat(20){
    part_particles_create(global.particle_sys_1,gdzie_idzie.x-random(100),gdzie_idzie.y-100-random(100),global.part_cegielka_zamku_1,1)
    part_particles_create(global.particle_sys_1,gdzie_idzie.x-random(100),gdzie_idzie.y-random(100)-100,global.part_cegielka_zamku_2,1)}
    
    SXMS_SFX_PlayExt(75,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);gdzie_idzie.boom=1;gdzie_idzie.sprite_index=s_castle_end_2;timer=0;local_global=3;obj_mario.grawitacja=-24;obj_mario.sekwencja=1;timer=0}
    obj_mario_anim.animacja=40
    obj_mario.szybkosc=0
    obj_mario.grawitacja=0
    obj_mario.sekwencja=0
    obj_mario.block_sterring=1
    }

