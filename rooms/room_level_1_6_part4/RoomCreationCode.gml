script_keys_init()
global.last_level_played=6 // zmieniaj to dla kazdego etapu, zmienna dla check pointa
global.level_death_pit=1220 // w jakim Y mario ma kusic od dziury
global.is_subplatforms=1
global.level_music=5
global.time=350
global.notime=0 // wlacz na 1 jak etap nie ma miec czasu (do etapow bonusowych)
global.coins_red_time=0
global.get_lives_by_jumping_on_enemies=0
global.background_kind=1
global.scroll_kind=1001
global.szybciej_aktywuj_scrool_y=0
global.fog=2
global.przetransferuj_czas=0


// stworz koniec etapu jezeli nie istnieje
if instance_number(o_koniec_etapu)=0 {instance_create(-10000,-10000,o_koniec_etapu)}
global.pauza=0