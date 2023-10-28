function script_initialize_game_map() {







	// WGRYWANIE GRAFIKI MAPY - DODAJ TO DO GRY i SKASUJ


	if wolna_sekwencja_wgrywania=76 {sprite_replace(s_map_grzyb_1,"./data/gfx/00_map_grzyb_1_strip8.png",3,0,0,54,86)}
	if wolna_sekwencja_wgrywania=30 {sprite_replace(s_map_grzyb_2,"./data/gfx/s_map_grzyb_2.png",0,0,0,50,70)}
	if wolna_sekwencja_wgrywania=28 {sprite_replace(s_map_domek_1,"./data/gfx/s_map_domek_1.png",0,0,0,79,138)}
	if wolna_sekwencja_wgrywania=29 {sprite_replace(s_map_domek_3,"./data/gfx/s_map_domek_3.png",0,0,0,58,126)}
	if wolna_sekwencja_wgrywania=26 {sprite_replace(s_map_castle,"./data/gfx/s_map_castle.png",0,0,0,80,163)}

	if wolna_sekwencja_wgrywania=27 {sprite_replace(s_map_castle_2,"./data/gfx/s_map_castle_2.png",0,0,0,67,108)}

	if wolna_sekwencja_wgrywania=31 {sprite_replace(s_map_super_castle,"./data/gfx/s_map_super_castle.png",0,0,0,108,189)}
	if wolna_sekwencja_wgrywania=32 {sprite_replace(s_map_super_castle2,"./data/gfx/s_map_super_castle2.png",0,0,0,66,182)}





	if wolna_sekwencja_wgrywania=253 {global.gfx_enemy_fish_map=sprite_add("./data/gfx/map_ryba.png",1,0,0,70/2,65/2)}



	if wolna_sekwencja_wgrywania=33 {sprite_replace(s_pirania_5,"./data/gfx/s_pirania_5.png",1,0,0,90,113)}








}
