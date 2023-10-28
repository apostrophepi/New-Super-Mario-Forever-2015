
if room_get_name(room)="room_title_screen_and_options" || global.blocker_ruchow_anim=1
    {


    }
    
    


// EXECUTE POZYCJI ANIMACJI

if wisi=0 && wyrywanie<10 {
obj_mario_anim.x=x+16+random(trzesator)/10-random(trzesator)/5
obj_mario_anim.y=y+32+random(trzesator)/10-random(trzesator)/5+biega_po_scianach_cofacz_y-obj_mario_anim.size*40+35}


script_player()



if global.one_sample_pirania_bite=1 {SXMS_SFX_PlayExt(70,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);global.one_sample_pirania_bite=0}

if global.przetransferuj_czas_slot<>0 {
global.time=global.przetransferuj_czas_slot;
global.przetransferuj_czas_slot=0}

global.coins_red=global.happy_stars

if global.pauza=0
    {
    if global.used_budzix_on_start>0 {global.used_budzix_on_start-=0.005; global.time+=1}
    if global.used_power_star_on_start=1 {global.used_power_star_on_start=0
            star_music_tick_switch=1
        instance_create(x,y,o_efekt_zdobytej_monety)   
        SXMS_SFX_PlayExt(116,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        koko=instance_place(x,y,o_power_star)
        music_tick=2
        power_star_time=660
    
    
    }
    
    
    
    
    
    
    
    
    
    
    }

