// SAVE GAME ROOM INIT


global.happy_stars=0
global.punkty=0
global.rodzaj_mario=1
global.check_point_slot=0 
global.wychodz_z_rury_nastepny_etap=2
global.used_power_star_on_start=0
global.used_budzix_on_start=0


//



script_keys_init()
global.last_level_played=2 // zmieniaj to dla kazdego etapu, zmienna dla check pointa
global.level_death_pit=room_height+90000 // w jakim Y mario ma kusic od dziury
global.is_subplatforms=1
global.level_music=31
global.time=550
global.notime=1 // wlacz na 1 jak etap nie ma miec czasu (do etapow bonusowych)
global.coins_red_time=0
global.get_lives_by_jumping_on_enemies=0
global.background_kind=30
global.scroll_kind=9000
global.szybciej_aktywuj_scrool_y=0
global.fog=0
global.przetransferuj_czas=1

// stworz koniec etapu jezeli nie istnieje
if instance_number(o_koniec_etapu)=0 {instance_create(-10000,-10000,o_koniec_etapu)}
global.pauza=0


global.blocker_ruchow_anim=0
global.posavegame_zeruj_animacje_namapie=1
global.blokuj_ruch_na_title_screenie=0