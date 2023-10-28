przejdz_na_mape+=1
    
    
    // TWORZ BLANKER/TRANSITIONS
if przejdz_na_mape=60
    {
    instance_create(x,y,o_BLANKER_MARIO_HEAD_OUT)
    }
// MARIO POKONAL MAPE WIEC WRACA NA MAPE
if przejdz_na_mape>180
    {
    global.mario_wszedl_do_etapu=2
    global.mario_completed_stage=1
    if instance_exists(o_magic_chest_duel_spawn) {global.kill_atacker=1}
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
    
    
    
    
    
    
    


if global.pauza=0
    {
    efer+=1
    if efer>20 {efer=0;instance_create(x,y,o_bonus_ring_effect)}
    y-=iyor
    iyor=iyor/1.09
    if dodano=0 && rodzaj=0 {dodano=1;global.map_item_grzyby+=1}
    if dodano=0 && rodzaj=1 {dodano=1;global.map_item_kwiatki+=1}
    if dodano=0 && rodzaj=2 {dodano=1;global.map_item_listek+=1}
    if dodano=0 && rodzaj=3 {dodano=1;global.map_item_burak+=1}
    if dodano=0 && rodzaj=4 {dodano=1;global.map_item_boomer+=1}
    if dodano=0 && rodzaj=5 {dodano=1;global.map_item_hammer+=1}
    if dodano=0 && rodzaj=6 {dodano=1;global.map_item_duch+=1}
    if dodano=0 && rodzaj=7 {dodano=1;global.map_item_bomber+=1}
    if dodano=0 && rodzaj=8 {dodano=1;global.map_item_tanoki+=1}
    if dodano=0 && rodzaj=9 {dodano=1;global.map_item_latacz+=1}
    if dodano=0 && rodzaj=10 {dodano=1;global.map_item_gwiazdka+=1}
    if dodano=0 && rodzaj=11 {dodano=1;global.map_item_budzik+=1}
    
    if rodzaj=0
        {
        animowanie+=5
        if oczkowanie<1010 {oczkowanie=random(1000)}
        if oczkowanie>=990 && oczkowanie<=1000 {oczkowanie=10000}
        if oczkowanie>=10000 {oczkowanie+=1;oczkowanie2+=10}
        if oczkowanie2>360 {oczkowanie2=0;oczkowanie=0}
        }
    if rodzaj>=1
        {
        kreciolek=sin(degtorad(animowanie/2))*20
        animowanie+=5
        grafika+=0.1
        if grafika>=7 {grafika=0}
        animer+=2.5
        }
    }

    
    draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x+13,y+10,1.2,1.2,animowanie/10,c_white,0.4)
draw_set_blend_mode(bm_normal)    
    
    
if rodzaj=0
    {
draw_sprite_ext(global.gfx_bonus_1,1,x+13,y+9,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
draw_sprite_ext(global.gfx_bonus_2,1,x+13,y+20,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie)))-abs(sin(degtorad(oczkowanie2))),0,c_white,1)
    }

if rodzaj=1
    {
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(s_bonus_efekter,1,x+13,y+10,1.2,1.2,animowanie/10,c_white,0.4)
    draw_set_blend_mode(bm_normal)


    draw_sprite_ext(s_bonus_kwiatek_1,1,x+13,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
    draw_sprite_ext(s_bonus_kwiatek_2,1,x+13,y+(sin(degtorad(animowanie)))*5,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
    }
if rodzaj=2
    {
draw_sprite_ext(s_bonus_listek,1,x+15,y+15,1,1,-obrotnis+cos(degtorad(animer))*40,c_white,1)
    } 
if rodzaj=3
    {
    draw_sprite_ext(s_bonus_rzodkiew,1,x+15,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)
    }   
if rodzaj=4
    {
    draw_sprite_ext(s_boomer_salad,1,x+15,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)
    }
if rodzaj=5
    {
    draw_sprite_ext(s_bonus_mlotker,1,x+15,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)
    }
if rodzaj=6
    {
    draw_sprite_ext(s_duch_grzyb,1,x+14,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
    }    
if rodzaj=7
    {
    draw_sprite_ext(s_bomber_bonus,1,x+15,y+10,1+0.0.5*(sin(degtorad(animowanie))),1-0.05*(sin(degtorad(animowanie))),kreciolek,c_white,1)
    }       
if rodzaj=8
    {
    draw_sprite_ext(s_tanooki_suit,1,x+15,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)
    }
if rodzaj=9
    {
    draw_sprite_ext(s_bonus_flaying_mushroom_1,0,x+14,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
    draw_sprite_ext(s_bonus_flaying_mushroom_2,0,x+14-(sin(degtorad(animowanie))),y+5+3*(sin(degtorad(animowanie))),abs(sin(animowanie*20)),1,0,c_white,1)
    }
if rodzaj=10
    {
    draw_sprite_ext(global.power_start_gfx[floor(grafika)],1,x+15,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)
    }
if rodzaj=11
    {
    draw_sprite_ext(s_mario_clock,1,x+15,y+30,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)
    }           
        
    
    /*
    global.map_item_grzyby=0
global.map_item_kwiatki=0
global.map_item_listek=0
global.map_item_burak=0
global.map_item_boomer=0
global.map_item_hammer=0

global.map_item_duch=0
global.map_item_bomber=0
global.map_item_tanoki=0
global.map_item_latacz=0
global.map_item_gwiazdka=0
global.map_item_budzik=0
    
    
    
    

/* */
/*  */
