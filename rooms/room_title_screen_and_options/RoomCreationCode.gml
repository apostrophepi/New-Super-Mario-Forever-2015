script_keys_init()
global.last_level_played=2 // zmieniaj to dla kazdego etapu, zmienna dla check pointa
global.level_death_pit=room_height+80 // w jakim Y mario ma kusic od dziury
global.is_subplatforms=1
global.level_music=1040000
global.time=4500000
global.notime=1 // wlacz na 1 jak etap nie ma miec czasu (do etapow bonusowych)
global.coins_red_time=0
global.get_lives_by_jumping_on_enemies=0
global.background_kind=30
global.scroll_kind=9999
global.szybciej_aktywuj_scrool_y=-200
global.fog=0
global.przetransferuj_czas=1

// stworz koniec etapu jezeli nie istnieje
if instance_number(o_koniec_etapu)=0 {instance_create(-10000,-10000,o_koniec_etapu)}
global.pauza=0
global.blokuj_ruch_na_title_screenie=1




        // WYBOR WINDOWED
        if global.windowed=0 && tick=0 {tick=1;window_set_fullscreen(0);window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2)}
        if global.windowed=1 && tick=0 {tick=1;window_set_fullscreen(1);window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2)}
        if global.windowed=2 && tick=0 {tick=1;window_set_fullscreen(0);window_set_position(display_get_width()/2-window_get_width()/2,display_get_height()/2-window_get_height()/2)}