SXMS_C_Stop();SXMS_WAP_Stop()

instance_create(x,y,o_map_sterownik)
instance_create(x,y,o_map_music)
global.delayer=0 // wykonywanie na mapie czynnosci jest opoznione
global.map_number=7 // kazda mama musi miec inny numer - potrzebna wartosc przy nagrywaniu zapisu i pozycji przeciwnikow
global.map_music=8
global.return_name_of_map=room
global.przetransferuj_czas=0
global.sequence_level_completed=0
global.przetransferuj_czas_slot=0
global.used_power_star_on_start=0
global.used_budzix_on_start=0
global.zostaw_ta_sama_muzyke_w_nast_etapie=8714917
global.algorytm_KULKA=0



global.blokuj_ruch_na_title_screenie=0
global.blocker_ruchow_anim=0


// FIX MAP

if global.fix_shipson_map=1 {global.fix_shipson_map=0; (171718).killed=0}
if global.fix_shipson_map=2 {global.fix_shipson_map=0; (171465).killed=0}
if global.fix_shipson_map=3 {global.fix_shipson_map=0; (172050).killed=0}
if global.fix_shipson_map=4 {global.fix_shipson_map=0; (172294).killed=0}
if global.fix_shipson_map=5 {global.fix_shipson_map=0; (173042).killed=0}
if global.fix_shipson_map=6 {global.fix_shipson_map=0; (172668).killed=0}
if global.fix_shipson_map=7 {global.fix_shipson_map=0; (173417).killed=0}


/*
global.delayer>=1000 pozwala graczowi ruszac sie na mapie
inne wartosci sprawdzaja co sie dzieje na mapie aktualnie
np =0; sprawdza ktorego przeciwnika zlikwidowac
np =1; nagrywa zmienne przeciwnikow do pliku BIN.HEX