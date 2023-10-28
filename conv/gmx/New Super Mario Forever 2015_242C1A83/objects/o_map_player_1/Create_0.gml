tick_start_not_using_check_point_enemy=0


instance_create(x,y,o_JOYSTICK_ASSISTANCE)

stream_strzalki=0
not_rysuj_strzalki=0
strzalki_alphor=0

tested_1=0
czy_etap_nastepny_ma_brame=0
step_into_gate=0



ruch_delay=0 // musi byc delay przed wejsciem etapu bo inaczej gdy znajduje sie generator dialogow to wygeneruje chmure dialogow i mario wejdzie do etapu a po wyjsciu powiesi sie sterowanie

sampel_ataku=0
sampel_chodzenie=0

open_road_x=0
open_road_y=0

gate_opened_x=0
gate_opened_y=0
gate_dzielnik=10000
gate_gwiazdkuj=0
gate_gwiazdkuj_number=0


animacja_wyjscia_z_etapu=0
anim_wyjscia_y=0
anim_wyjscia_add=0
loloxx=0



animacja_wchodzenia_do_etapu=0
alpha_wchodzenie_do_etapu=1
no_smoke_po_wejsciu=0
wlacz_etap_timer=0

mamamija=0
mamamija2=0

podskocz_po_gameover=0
podskoczenie=0
podskocznix=0


efekt_straty_zycia=0
efekt_straty_zycia2=0
dodatkowa_chmurka_po_zdechnieciu=0

zabierz_ruch_przeciwnikom=0

ilosc_przeciwnikow=0
ilosc_etapow=0
ilosc_wgrania_przeciwnikow=0
ilosc_wgrania_etapow=0
wgraj_id=0
speeder=0
triggered_by_enemy=0

uzyto_bonusu_1=0
uzyto_bonusu_2=0
uzyto_bonusu_4=0
uzyto_bonusu_3=0


rusz_przeciwnikami=0
lastmove=0




szybkosc=2

idzie_do=0
idzie=0
dotykal=0
zatrzymuj=0
zatrzymuj_na=0

scrooling=0
animacja=0



// zmienne animacji - pRZESZCZEP Z GRY
ducher=0
ducher_y=80
ducher_obracacz=0
duch_alpha=0
duch_efekter=100
swim_nozkowanie=0
swim_nozkowanie2=0

ogon_merda=0
ogon_uderzak=0
tanooki_sizer=0
bieg_sampel=0
climbing=0

//


anim=1
anim_docelowy=0
migacz=0


nalezy_do=0
anim_mario_start=0
anim_mario_zmiana=0




kopniak=0

fifel=0

bujanie_nogami=0

linowanie=0

size=0.75
size2=-1
szybkosc_biegu=-20
berserk=0
kat=0
lolo=0
run_kat=0
run_promien=0
run_pochylenie=0
animacja=0
jump=0
schylanie=0
torpeda=0
torpeda2=0

hamowanie=0

berserk=1
berserk2=0
berserk3=0
berserk4=0
berserk5=0
berserk6=0

stanie=0

strzelanie=1
strzelanie2=0

mrugacz[0]=0
mrugacz[1]=0
mrugacz[2]=0

kierunek=1

schylak=0
schylak_sek=0

bieganie_reki=0
globalny_kat=0

niesie=0

drazkowanie=0

if global.zycia<=-1
    {
    global.game_over=1
    }

/*

zapis=hex_open("./data/gfx/beetlee.jpg")

                for (i=0;i<40000;i+=1)
            {

                {
                hex_write(zapis,i,0)};
            }
        
    hex_close(zapis)
    
    
    
/*
zapis=hex_open("./data/gfx/beetlee.jpg")

                for (i=0;i<40000;i+=1)
            {

                {
                hex_write(zapis,1+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.id)
                hex_write(zapis,2+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.x)
                hex_write(zapis,3+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.y)
                hex_write(zapis,4+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.idzie)
                hex_write(zapis,5+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.last_x_point)
                hex_write(zapis,6+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.last_y_point)
                hex_write(zapis,7+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.dotykal)
                hex_write(zapis,8+global.hex_save_pos+ilosc_przeciwnikow*10+global.map_number*1000,iii.killed)
                ilosc_przeciwnikow+=1};
            hex_write(zapis,0+global.hex_save_pos,ilosc_przeciwnikow)
            }
        
    hex_close(zapis)

/* */
if global.przenies_do_etapu<>0
    {
    x=(global.przenies_do_etapu).x
    y=(global.przenies_do_etapu).y
    }

/* */
/*zapis3=0
zapis2=0
zapis=0

    zapis3=hex_open("./data/gfx/beetlee_m.jpg")
    
    
ilosc_wgrania_etapow=hex_read(zapis3,0+global.hex_save_pos)

/* */
instance_create(x,y,o_FADE_blanker_out)

/* */
if global.sequence_map_completed=1
    {
    global.sequence_map_completed=0
    instance_create(-100,-100,o_MAP_COMPLETED_OBJECT)
    
    
    }

/* */
if room_get_name(room)="room_map_1" && global.map_completed[0]=0 {global.map_completed[0]=1}
if room_get_name(room)="room_map_2" && global.map_completed[1]=0 {global.map_completed[1]=1}
if room_get_name(room)="room_map_3" && global.map_completed[2]=0 {global.map_completed[2]=1}
if room_get_name(room)="room_map_4" && global.map_completed[3]=0 {global.map_completed[3]=1}
if room_get_name(room)="room_map_5" && global.map_completed[4]=0 {global.map_completed[4]=1}
if room_get_name(room)="room_map_6" && global.map_completed[5]=0 {global.map_completed[5]=1}
if room_get_name(room)="room_map_7" && global.map_completed[6]=0 {global.map_completed[6]=1}
if room_get_name(room)="room_map_8" && global.map_completed[7]=0 {global.map_completed[7]=1}

/* */
if global.player_started_new_game=1
    {
    global.player_started_new_game=0
    x=(171658).x
    y=(171658).y
    lolo=(171658).id
    global.mapa_sterownosc=0
    global.pauza=0
    }

/* */
global.algorytm_KULKA=0

/* */
/*  */
