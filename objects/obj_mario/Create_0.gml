global.sciszacz_sekwencyjny_muzyki=1
armaten_anim_powrot=0
wylacz_walce=0

instance_create(x,y,o_JOYSTICK_ASSISTANCE)

scrool_animation_x=0
scrool_animation_y=0
scrool_animation_fun=0

check_point_tick=0


strzelani_z_armaty_bonus_end=0

save_game_room_sample=0
zdobyl_skrzynke_z_trzech=0

kafel=0

przybliz_scrool_1100=0

fix_wind=instance_create(x,y,o_wind_fix_marker)
scroll_podwyzsz_1100=0

scrool_sterowalny_obiektami=0 // oddalaj scrolling specjalnymi obiektami , dziala tylko dla scrollu rodzaj = 1110
scrool_sterowalny_obiektami2=0


lavuj=0 // skuszenie od lawy


kluczowanie=0 // daje niezniszczalnosc Mario jak sie pojawi klucz


// scrolling pionowy - etapy w ktorych mario spada na dol

scroller_towerowy=0
scroller_towerowy_init=0
checked_id_rurowe_przejscie=0



// efekty dla chmur po ktorych chodzi mario
chmurnix=0
chmurnix_id=0
//
step_sample=0

armata_sampel2=0
armata_sampel=0
armata_shoot_delay=0
obliczanie_dotykania_armaty=0
ruszanie_podwodna_woda=0


slot_zmiennej_drzwi=0

aktywuj_poziomy_scrolling=0
wartosc_aktywowanego_poziomego=0
poziomy_scrolling_adder=0

sciszaj_muzyke=0
scrool1=0;scrool2=0
wychodzi_rury_w_nastepnym_etapie=0



star_music_tick_switch=0

background_obliczator1=0
background_obliczator2=0


time_up_trigger=0




kierunek_wychodzenia_murkowego=0 // jak mario duzy wpakuje sie pod murek maly schylajac sie
moze_wiatraczkowac=0
wiatrtaczek_sampel=0 // sampel wiatraczkowy
wiatraczkuje_sie=0 // zwalnia grawitacje zeby dac efekt wylatywania w powietrze

shield_skuszenia=0

schylony_wpakowywacz=0

dotykal_windy=0

czy_dotyka_windy=0

power_star_migacz=0
power_star_kolorek=0
power_star_time=0
power_star_combo=0
power_star_combo_actual=0

zmien=0
ilosc_obiektow=0
zmien_dodawacz=0
red_coins_collected=0
murek_change_collected=0

music_tick_pausing=0
music_tick=0
music_tick_level=0
music_tick_skrot_changer=0
music_polecenie=0


timer_skrot=0
podazaj_skrotem=0
skrot_podazaj_speed=0
kierunek_podazania=0
zagraj_sampel_wyjscia=0
block_sterring=0


//

global.get_lives_by_jumping_on_enemies=0
jump_enemies_scored=0
zabierz_czas=0


hud_objects=instance_create(x,y,o_HUD_tworzony_przez_gracza)

// spowolniatory wodne

watered=1 // zawsze musi byc = 1
banioker=0 // tworzenie baniek
plusknie=1 // puskanie o wode
scrooling_ship=0 // ruszanie ekranu jak statku


// trzesienie - earthquake

trzesator_x=0
trzesator_y=0
trzesator=0

//SXMS_C_Play("./data/m/18-Honeyhive galaxy-2.mp3")


ghost_smoke=0
racoon_spadacz=0
racoon_dym=0
statued=0
delay_to_statued=0

// globalne zmienne chodzenia

global.max_predkosc_po_zderzeniu=4
petla_stromosci=0
anty_walljump=0

// zmienne do obrywania

skuszenie=0
shield=0
oberwal=0

// stworz animatora gracza i edytuj jego wyglad przy zdobywaniu i kuszeniu dzieki zmiennym ponizej
animator=instance_create(x,y,obj_mario_anim)
animator.nalezy_do=id

czy_anim_resetuj_markera=0 //sprawdza czy marker kolizji ma byc wielki czy maly po skonczonym bieganiu po gumce 1,2,3


y_chwytania_drazka=0

ostatnia_lina=0

biega_po_scianach=0
biega_po_scianach_obrot=0
biega_po_scianach_cofacz_y=0
biega_strona=0

nie_moze_podbic_punktu=0
wall_jump=0
wall_jump_key=0

wisi=0
wisi_na=0


przyczepnosc=1
oiled_run=0

can_destroy_brick=0

wyrywanie=0
nosi_wyrwane=0
kont_noszenia=0
promien_noszenia=0
click_shot=0
click_shot2=0

image_speed=0

cyferki=font_add_sprite(sprite17,ord("0"),0,0) // nastaw fonty
cyferki2=font_add_sprite(sprite18,ord("0"),0,0) // nastaw fonty

speeded=0
hamuje=0

windonip=0
winduje=0
wyjatek=0
spadanie_w_windzie=0 // gdy gracz podskoczyl i akurat wykrywator widnowy znalaz� si� w windzie - anuluje chwytanie sie windy
schylenie=0
berserk=0

odglowywanie=0

getwind=0
windloop=0

windor=instance_create(x,y,obj_mario_windor)
linor=instance_create(x,y,obj_mario_line_marker)



kuku=0
grawitacja=0;
sekwencja=0;
szybkosc=0;

stepor=0
teststep=0
steploop=0
teststep2=0
steploop2=0

teststep3=0
steploop3=0
efekt1=0
lift_jump=0
lifted=0
step_lift=0
ygrek_windowy=0

rodzaj_mario=0




transferuj_czas=0

global.level_death_pit=room_height+80

global.title_screen_activated=0
if room_get_name(room)="room_title_screen_and_options"
    {
    /*


    global.title_screen_activated=1
    
    */
    } 

/* */
blanker_dziala=random(100)

//if blanker_dziala<=50 {instance_create(x,y,o_FADE_blanker_out)}
if blanker_dziala<=100 {instance_create(x,y,o_BLANKER_MARIO_HEAD_IN)}
if blanker_dziala<=100 {instance_create(x,y,o_BLANKER_MARIO_HEAD_IN)}

/* */
if check_point_tick=0 && global.chpoint_canuse=1 {

if global.chpoint_id<>0 {x=global.chpoint_id.x;y=global.chpoint_id.y-80; with(global.chpoint_id){sekwencja=1}}



}









global.chpoint_canuse=0
check_point_tick=1

/* */
sekwencjaKULKO=0
kierunekKULKO=0
blocker=0
fifiKULKO=0


lewoKULKO=0
goraKULKO=0
dolKULKO=0
prawoKULKO=0

/* */
/*  */
