function script_initialize_zmienne_gracza() {
	global.zaatakowany_przeciwnik=0


	global.ster_up=0
	global.ster_down=0
	global.ster_left=0
	global.ster_right=0
	global.ster_jump=0
	global.ster_fire=0


	// ZMIENNE TITLE SCREENA

	global.ekran_size_act=1


	global.fix_shipson_map=0




	// TEGO NIE KOPIUJ ALBO SKASUJ


	global.map_fonts_1=font_add_sprite(s_map_fonts_1,ord("!"),1,0)
	global.english_or_polish=0

	global.resolution=0
	global.windowed=1

	global.glosnosc_dzwieku=255
	global.glosnosc_muzyki=255



	// ZMIENNE

	global.english_or_polish=0


	// zmienne

	global.blokuj_ruch_na_title_screenie=0
	global.algorytm_KULKA=0 // mega procesororzerny algorytm!!! Tylko w etapach grzie to bedzie uzywane!!!
	global.player_started_new_game=0
	global.blocker_ruchow_anim=0
	global.sciszacz_sekwencyjny_muzyki=1
	global.zostaw_ta_sama_muzyke_w_nast_etapie=999999

	global.posavegame_zeruj_animacje_namapie=0


	// USED ITEMS

	global.used_power_star_on_start=0
	global.used_budzix_on_start=0


	// zmienne do check-pointu

	global.chpoint_lvl_selected=0
	global.chpoint_id=0
	global.chpoint_sublevel=0
	global.chpoint_canuse=0


	//
	global.sequence_level_completed=0 // zmienna uzywana przez algorytm dodawania punktow za czas, zeby wiedzial ze Mario Pokonal etap
	global.sequence_map_completed=0 // sekwencja pokonania mapy jak zdobedzie korone

	global.title_screen_activated=0


	global.change_position_on_map=0 // JEZELI JEST ROZNE OD ZERA TO TELEPORTUJE MARIO PO WYSCIU Z ETAPU DO ETAPU NA MAPIE JAKI ID TA WARTOSC ZAWIERA

	global.kierunek_aktualnej_armaty=0 // kierunek aktualnej armaty ktorej uzywa Mario, potrzebne do settowania efektu wystrzalu
	global.check_point_slot=0 // nagrywa do tej zmiennej czy gracz ma w aktualnym etapie zaznaczony check point (kazdy etap musi miec osobna wartosc "global.last_level_played")
	global.przetransferuj_czas_slot=0 // jezeli etap sklada sie z kilku pod-etapow to nagrywa czas do slotu przed przejsciem subetapu do kolejnego subetapu
	global.wychodz_z_rury_nastepny_etap=0 // ustaw w obiekcie jakim chcesz zeby w nastepnym etapie jak rura przeniesie do nastepnego zeby mario wychodzil z rury na poczatku etapu


	global.zmienna_dla_muszli=0 // nagrywa ID zderzenia z muszla

	global.scroll_kind=0    // rodzaj scroola // modyfikowalna zmienna podczas etapu
	global.background_kind=0 // rodzaj backgroundu // modyfikowalna zmienna podczas etapu
	global.scroll_speed_oddalator=0 // zmienna ktora podaza za szybkoscia mario i modyfikuje scroll


	global.one_sample_pirania_bite=0 // jeden dzwiek ugyzienia na raz
	global.coins_all=0

	global.aktualna_muzyka_gra=0 // 1 - triggerus, 2 - gwiazdka, 3 - koniec etapu


	global.earth_quake=0 // trzesienie ziemii od duzego Hammer Brossa
	global.skrot=0 // globalna wartosc jakby mialo byc przejscie miedzy etapami przez skrot

	global.ekran_size_act=1 
	global.ekran_size_max=1 

	global.odleglosc_ekranu=0
	global.ekran_srodek_x=0
	global.ekran_srodek_y=0

	global.hit_x=0
	global.hit_y=0 // oberwanie przeciwnika punktowe

	global.happy_stars=0
	global.punkty=0
	global.step=0
	global.rodzaj_mario=0
	global.roznica=0
	global.oberwal=0 // 1 - strata power-upa, 2 - instant kill
	global.energia=8 // dla wersji mario z energia


	global.skrot_static_scrooling_x=0
	global.skrot_static_scrooling_y=0

	global.level_music=0 // jaka muzyka ma byc default w etapie
	// ZMIENNE GLOBALNE

	global.graphics=6 // 5 - normal, 6 - additional SUPER EFFECTS!
	global.pauza=0
	global.punkty=0
	global.coins=0
	global.coins_red_time=0
	global.zycia=4
	global.time=300



}
