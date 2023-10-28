function script_generating_particlering() {

	// FONTY


	global.map_fonts_1=font_add_sprite(s_map_fonts_1,ord("!"),1,0)
	global.map_fonts_2=font_add_sprite(s_map_napis_5,ord("/"),1,0)




	// ONE LOAD GRAPHICS
	/*JPG*/global.background_underwater=background_add("./data/gfx/waterpowdwodny.jpg",0,0)

	/*JPG*/global.background_lavas_ground=background_add("./data/gfx/000_back_lavas_ground.jpg",0,0)

	/*JPG*/global.underwater_utter_glow=sprite_add("./data/gfx/000_underwater_utter_glow.jpg",1,0,0,0,0)


	script_initialize_zmienne_gracza()
	/*JPG*/global.lightning=sprite_add("./data/gfx/lightning.jpg",1,0,0,120,10)
	/*NOT USED??*/sprite_replace(s_clouds_1,"./data/gfx/s_clouds_1.png",1,0,0,0,0)
	global.title_screen_blank1=sprite_add("./data/t/tit1.png",0,0,0,200/2,300/2)
	global.title_screen_blank2=sprite_add("./data/t/tit2.png",0,0,0,200/2,300/2)
	global.title_screen_blank3=sprite_add("./data/t/tit3.png",0,0,0,200/2,300/2)

	global.title_screen_efekt=sprite_add("./data/t/napis_efekt.png",0,0,0,64/2,49/2)

	global.title_screen_main1=sprite_add("./data/t/tit_main_1.png",0,0,0,550/2,100/2)
	global.title_screen_main2=sprite_add("./data/t/tit_main_2.png",0,0,0,200/2,80/2)
	global.title_tail=sprite_add("./data/t/mariotail.png",0,0,0,12,129)

	global.title_glowwing=sprite_add("./data/t/tit_glowwing.png",0,0,0,94/2,94/2)
	global.title_glowwing_sparcle=sprite_add("./data/t/tit_sparcle_logo.png",0,0,0,105/2,105/2)

	global.title_back_1=sprite_add("./data/t/tit_back_1.png",0,0,0,0,0)


	global.odejmuj_gwiazdeczki=0 // odejmuje gwiazdki zdobyte po wybraniu lepszej skrzynki


	/*JPG*/global.background_palace=background_add("./data/gfx/BCKPALACE.jpg",0,0)
	/*JPG*/global.background_grassland=background_add("./data/gfx/beetle_back_1.jpg",0,0)
	/*JPG*/global.background_undegrounds=background_add("./data/gfx/beetle_back_2.jpg",0,0)
	/*JPG*/global.background_castle=background_add("./data/gfx/castle_1.jpg",0,0)
	/*JPG*/global.background_ghosts=background_add("./data/gfx/beetle_back_3.jpg",0,0)


	/*JPG*/global.background_evil_forest=background_add("./data/gfx/evil_forest.jpg",0,0)


	/*JPG*/global.water_wet_ekranos=sprite_add("./data/gfx/000-water_wet_ekranos.jpg",1,0,0,0,0)
	global.font=font_add_sprite(s_map_fonts_1,ord("!"),1,0)






	// CAVE SPARKLINGER



	global.explosion = part_system_create();
	part_system_depth(global.explosion,-200);



	global.sparkling_cave=part_type_create() // Point block efe
	part_type_sprite(global.sparkling_cave,s_cave_sparkling,1,0,0)
	part_type_size(global.sparkling_cave,0.25,1,-0.0015,0);
	part_type_alpha3(global.sparkling_cave,0,1,0);
	part_type_life(global.sparkling_cave,60,160);
	part_type_speed(global.sparkling_cave,0,0,0.001,0)
	part_type_direction(global.sparkling_cave,0,360,1,111)
	part_type_orientation(global.sparkling_cave,0,360,0.1,0,0)



	global.sparkling_cave2=part_type_create() // Point block efe
	part_type_sprite(global.sparkling_cave2,s_cave_sparkling2,1,0,0)
	part_type_size(global.sparkling_cave2,0.25,1,-0.0015,0);
	part_type_alpha3(global.sparkling_cave2,0,0.25,0);
	part_type_life(global.sparkling_cave2,60,160);
	part_type_speed(global.sparkling_cave2,0,0,0.001,0)
	part_type_direction(global.sparkling_cave2,0,360,1,111)
	part_type_orientation(global.sparkling_cave2,0,360,0.1,0,0)
	part_type_blend(global.sparkling_cave2,1)


	// Zdefiniuj eksplozje przeciwnikow globalna, gdy Mario zdobedzie wszystkie balony w DUELU

	//Smoke Layer
	global.prt3 = part_type_create();
	part_type_shape(global.prt3,pt_shape_smoke);
	part_type_size(global.prt3,1,2,-0.02,0);
	//part_type_color_mix(prt3,c_dkgray,c_ltgray);
	part_type_alpha2(global.prt3,1,0);
	part_type_life(global.prt3,80,100);
	part_type_gravity(global.prt3,0.01,90);
	part_type_speed(global.prt3,1,2,0.001,0);
	part_type_direction(global.prt3,50,130,0,0);


	//Create Particle System
	global.explosion = part_system_create();
	part_system_depth(global.explosion,-200);

	//Create Core Emitter
	global.emit1 = part_emitter_create(global.explosion);
	part_emitter_region(global.explosion,global.emit1,x,x+20-random(40),y,y+20-random(40),ps_shape_ellipse,ps_distr_gaussian);



	//
	global.blocker_boss_sequence=0
	// SYSTEM PARALAX PRZED MORKAMI
	global.particle_sys_przed_morkami=part_system_create()
	part_system_automatic_update(global.particle_sys_przed_morkami,1)
	part_system_depth(global.particle_sys_przed_morkami,-40000) 



	// ZA MURKAMI
	global.particle_sys_zanurkami=part_system_create()
	part_system_automatic_update(global.particle_sys_zanurkami,1)
	part_system_depth(global.particle_sys_zanurkami,40000) 



	// PARTIVLE OVERSCREEN!!!
	global.particle_sys_overscreen=part_system_create()
	part_system_automatic_update(global.particle_sys_overscreen,1)
	part_system_depth(global.particle_sys_overscreen,-9999999) 

	// PARTIVLE BEFORE WATER - FEPTH = -1
	global.particle_sys_overscreen2=part_system_create()
	part_system_automatic_update(global.particle_sys_overscreen2,1)
	part_system_depth(global.particle_sys_overscreen2,-1000001) 



	global.ekran_size_act=1
	global.particle_map_sterring=part_system_create()
	part_system_automatic_update(global.particle_map_sterring,1)
	part_system_depth(global.particle_map_sterring,0) 



	global.pauza=0
	    global.odleglosc_ekranu=88888
	    global.ekran_srodek_x=999
	    global.ekran_srodek_y=990



	global.part_BOOMBOOM_smoke=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_smoke,s_map_efecter_1,1,0,0)
	part_type_size(global.part_BOOMBOOM_smoke,1,2,-0.0015,0);
	part_type_alpha3(global.part_BOOMBOOM_smoke,0,0.3,0);
	part_type_life(global.part_BOOMBOOM_smoke,90,120);
	part_type_speed(global.part_BOOMBOOM_smoke,0.1,0.5,0,0)
	global.part_BOOMBOOM_smoke2=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_smoke2,s_map_efecter_1,1,0,0)
	part_type_size(global.part_BOOMBOOM_smoke2,2,2,-0.0115,0);
	part_type_alpha3(global.part_BOOMBOOM_smoke2,0,1,0);
	part_type_life(global.part_BOOMBOOM_smoke2,50,50);
	part_type_speed(global.part_BOOMBOOM_smoke2,1,5,0,0)
	global.part_BOOMBOOM_smoke3=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_smoke3,s_map_efecter_1,1,0,0)
	part_type_size(global.part_BOOMBOOM_smoke3,2,2,-0.0115,0);
	part_type_alpha3(global.part_BOOMBOOM_smoke3,0,1,0);
	part_type_life(global.part_BOOMBOOM_smoke3,50,50);
	part_type_speed(global.part_BOOMBOOM_smoke3,1,5,0,0)
	part_type_direction(global.part_BOOMBOOM_smoke3,180,180,0,0)

	global.part_BOOMBOOM_smoke4=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_smoke4,s_spikey_10,1,0,0)
	part_type_size(global.part_BOOMBOOM_smoke4,0.1,2,-0.0115,0);
	part_type_alpha3(global.part_BOOMBOOM_smoke4,0.6,0.2,0);
	part_type_life(global.part_BOOMBOOM_smoke4,5,10);
	//part_type_speed(global.part_BOOMBOOM_smoke4,1,5,0,0)
	part_type_orientation(global.part_BOOMBOOM_smoke4,270,270,0,0,0)

	global.part_BOOMBOOM_smoke5=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_smoke5,s_boom_boom_6,1,0,0)
	part_type_size(global.part_BOOMBOOM_smoke5,0.25,0.5,-0.0515,0);
	part_type_alpha3(global.part_BOOMBOOM_smoke5,1,0.2,0);
	part_type_life(global.part_BOOMBOOM_smoke5,10,10);
	part_type_speed(global.part_BOOMBOOM_smoke5,1,2,0,0)
	part_type_orientation(global.part_BOOMBOOM_smoke5,270,270,0,0,0)

	global.part_BOOMBOOM_smoke6=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_smoke6,s_spikey_10,1,0,0)
	part_type_size(global.part_BOOMBOOM_smoke6,2,4,-0.0215,0);
	part_type_alpha3(global.part_BOOMBOOM_smoke6,0.6,0.2,0);
	part_type_life(global.part_BOOMBOOM_smoke6,20,40);
	//part_type_speed(global.part_BOOMBOOM_smoke4,1,5,0,0)
	part_type_orientation(global.part_BOOMBOOM_smoke6,270,270,0,0,0)


	global.part_BOOMBOOM_minismoke=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_minismoke,ef_smoke ,1,0,0)
	part_type_size(global.part_BOOMBOOM_minismoke,1,2,-0.0115,0);
	part_type_alpha3(global.part_BOOMBOOM_minismoke,0,0.3,0);
	part_type_life(global.part_BOOMBOOM_minismoke,20,40);
	part_type_speed(global.part_BOOMBOOM_minismoke,0.1,0.5,0,0)

	global.part_BOOMBOOM_starr=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_starr,s_boom_boom_8,1,0,0)
	part_type_size(global.part_BOOMBOOM_starr,2,2,-0.0415,0);
	part_type_alpha3(global.part_BOOMBOOM_starr,1,0.5,0);
	part_type_life(global.part_BOOMBOOM_starr,80,80);
	part_type_speed(global.part_BOOMBOOM_starr,15,15,-0.5,0)
	part_type_direction(global.part_BOOMBOOM_starr,90,90,0,0)
	part_type_orientation(global.part_BOOMBOOM_starr,0,360,10,10,1)
	global.part_BOOMBOOM_starr2=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_starr2,s_boom_boom_8,1,0,0)
	part_type_size(global.part_BOOMBOOM_starr2,1.2,1.2,-0.0415,0);
	part_type_alpha3(global.part_BOOMBOOM_starr2,1,0.5,0);
	part_type_life(global.part_BOOMBOOM_starr2,60,60);
	part_type_speed(global.part_BOOMBOOM_starr2,10,10,-0.5,0)
	part_type_direction(global.part_BOOMBOOM_starr2,45,45,0,0)
	part_type_orientation(global.part_BOOMBOOM_starr2,0,360,10,10,1)
	global.part_BOOMBOOM_starr3=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_starr3,s_boom_boom_8,1,0,0)
	part_type_size(global.part_BOOMBOOM_starr3,1.2,1.2,-0.0415,0);
	part_type_alpha3(global.part_BOOMBOOM_starr3,1,0.5,0);
	part_type_life(global.part_BOOMBOOM_starr3,60,60);
	part_type_speed(global.part_BOOMBOOM_starr3,10,10,-0.5,0)
	part_type_direction(global.part_BOOMBOOM_starr3,45+90,45+90,0,0)
	part_type_orientation(global.part_BOOMBOOM_starr3,0,360,10,10,1)
	global.part_BOOMBOOM_starr5=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_starr5,s_boom_boom_8,1,0,0)
	part_type_size(global.part_BOOMBOOM_starr5,1.2,1.2,-0.0415,0);
	part_type_alpha3(global.part_BOOMBOOM_starr5,1,0.5,0);
	part_type_life(global.part_BOOMBOOM_starr5,60,60);
	part_type_speed(global.part_BOOMBOOM_starr5,10,10,-0.5,0)
	part_type_direction(global.part_BOOMBOOM_starr5,0,0,0,0)
	part_type_orientation(global.part_BOOMBOOM_starr5,0,360,10,10,1)
	global.part_BOOMBOOM_starr4=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_starr4,s_boom_boom_8,1,0,0)
	part_type_size(global.part_BOOMBOOM_starr4,1.2,1.2,-0.0415,0);
	part_type_alpha3(global.part_BOOMBOOM_starr4,1,0.5,0);
	part_type_life(global.part_BOOMBOOM_starr4,60,60);
	part_type_speed(global.part_BOOMBOOM_starr4,10,10,-0.5,0)
	part_type_direction(global.part_BOOMBOOM_starr4,180,180,0,0)
	part_type_orientation(global.part_BOOMBOOM_starr4,0,360,10,10,1)


	global.part_BOOMBOOM_starr41=part_type_create() // Point block efe
	part_type_sprite(global.part_BOOMBOOM_starr41,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_BOOMBOOM_starr41,1.2,1.2,-0.0415,0);
	part_type_alpha3(global.part_BOOMBOOM_starr41,1,0.5,0);
	part_type_life(global.part_BOOMBOOM_starr41,60,60);
	part_type_speed(global.part_BOOMBOOM_starr41,10,10,-0.5,0)
	part_type_direction(global.part_BOOMBOOM_starr41,180,180,0,0)
	part_type_orientation(global.part_BOOMBOOM_starr41,0,360,10,10,1)


	global.part_bowser_swing=part_type_create() // Point block efe
	part_type_sprite(global.part_bowser_swing,s_swing_hit,1,0,0)
	part_type_size(global.part_bowser_swing,5,5,-0.0415,0);
	part_type_alpha3(global.part_bowser_swing,0.5,0.5,0);
	part_type_life(global.part_bowser_swing,10,10);
	part_type_speed(global.part_bowser_swing,0,0,-0.5,0)
	part_type_direction(global.part_bowser_swing,0,0,0,0)
	part_type_orientation(global.part_bowser_swing,360,360,0,0,0)


	global.part_bowser_swing2=part_type_create() // Point block efe
	part_type_sprite(global.part_bowser_swing2,s_boom_boom_6,1,0,0)
	part_type_size(global.part_bowser_swing2,5,5,-0.0415,0);
	part_type_alpha3(global.part_bowser_swing2,0.5,0.5,0);
	part_type_life(global.part_bowser_swing2,20,20);
	part_type_speed(global.part_bowser_swing2,0,0,-0.5,0)
	part_type_direction(global.part_bowser_swing2,0,0,0,0)
	part_type_orientation(global.part_bowser_swing2,360,360,0,0,0)
	part_type_scale(global.part_bowser_swing2,-0.5,1)




	global.part_bowser_zianie=part_type_create() // Point block efe
	part_type_shape(global.part_bowser_zianie,pt_shape_flare)
	part_type_size(global.part_bowser_zianie,5,5,-0.0415,0);
	part_type_alpha3(global.part_bowser_zianie,0.5,0.5,0);
	part_type_life(global.part_bowser_zianie,20,20);
	part_type_speed(global.part_bowser_zianie,0,0,-0.5,0)
	part_type_direction(global.part_bowser_zianie,0,0,0,0)
	part_type_orientation(global.part_bowser_zianie,360,360,0,0,0)

	global.part_bowser_zianie2=part_type_create() // Point block efe
	part_type_sprite(global.part_bowser_zianie2,global.gfx_bowser_fireball,1,0,0)
	part_type_size(global.part_bowser_zianie2,1,2,-0.0415,0);
	part_type_alpha3(global.part_bowser_zianie2,0.5,0.5,0);
	part_type_life(global.part_bowser_zianie2,20,20);
	part_type_speed(global.part_bowser_zianie2,0,0,-0.5,0)
	part_type_direction(global.part_bowser_zianie2,0,0,0,0)
	part_type_orientation(global.part_bowser_zianie2,360,360,0,0,0)


	global.part_bowser_firesmoke=part_type_create() // Point block efe
	part_type_shape(global.part_bowser_firesmoke,pt_shape_smoke  )
	part_type_size(global.part_bowser_firesmoke,1.2,1.2,-0.0115,0);
	part_type_alpha3(global.part_bowser_firesmoke,1,0.5,0);
	part_type_life(global.part_bowser_firesmoke,60,80);


	global.part_bowser_firesmoke2=part_type_create() // Point block efe
	part_type_sprite(global.part_bowser_firesmoke2,s_fireball_boom,1,0,0)
	part_type_size(global.part_bowser_firesmoke2,1,1,-0.0115,0);
	part_type_alpha3(global.part_bowser_firesmoke2,1,0.5,0);
	part_type_life(global.part_bowser_firesmoke2,60,80);











	// INITIALIZE GAME APPLICZTION
	// INITIALIZE GAME APPLICZTION
	// INITIALIZE GAME APPLICZTION



	global.lavar2=part_type_create() // Point block efe
	part_type_sprite(global.lavar2,global.lava_backer,1,0,0)
	part_type_size(global.lavar2,1,2,-0.0115,0);
	part_type_alpha3(global.lavar2,0,1,0);
	part_type_life(global.lavar2,50,150);
	part_type_direction(global.lavar2,90,90,0,0)
	part_type_orientation(global.lavar2,-20,20,2,0,0)
	part_type_speed(global.lavar2,2,3,0,0)
	part_type_gravity(global.lavar2,0.125,-90)




	global.part_efekt_lotu=part_type_create() // Point block efe
	part_type_sprite(global.part_efekt_lotu,global.efekt_szybkiego_lotu_1,1,0,0)
	part_type_size(global.part_efekt_lotu,0.1,3,-0.0015,0);
	part_type_alpha3(global.part_efekt_lotu,0,0.2,0);
	part_type_life(global.part_efekt_lotu,40,50);
	part_type_direction(global.part_efekt_lotu,0,0,0,0)
	part_type_orientation(global.part_efekt_lotu,0,0,0,0,0)
	part_type_speed(global.part_efekt_lotu,10,20,0.001,0)







	global.part_woda_efektoz=part_type_create() // Point block efe
	part_type_sprite(global.part_woda_efektoz,global.efekt_wody_1,1,0,0)
	part_type_size(global.part_woda_efektoz,1,5,-0.0115,0);
	part_type_alpha3(global.part_woda_efektoz,0,1,0);
	part_type_life(global.part_woda_efektoz,40,50);
	part_type_direction(global.part_woda_efektoz,0,360,0,0)
	part_type_orientation(global.part_woda_efektoz,0,360,0,0,0)
	part_type_speed(global.part_woda_efektoz,0,0.3,0,0)


	// LOAD SPRITES
	global.part_fx_wodospad_z_rury_1=part_type_create() // Point block efe
	part_type_sprite(global.part_fx_wodospad_z_rury_1,s_map_sparkling,1,0,0)
	part_type_size(global.part_fx_wodospad_z_rury_1,1,2,-0.0115,0);
	part_type_alpha3(global.part_fx_wodospad_z_rury_1,0,1,0);
	part_type_life(global.part_fx_wodospad_z_rury_1,50,50);
	part_type_direction(global.part_fx_wodospad_z_rury_1,-20,20,0,0)
	part_type_orientation(global.part_fx_wodospad_z_rury_1,-20,20,2,0,0)
	part_type_speed(global.part_fx_wodospad_z_rury_1,4,6,0,0)
	part_type_gravity(global.part_fx_wodospad_z_rury_1,0.125,-90)

	global.part_fx_wodospad_z_rury_2=part_type_create() // Point block efe
	part_type_sprite(global.part_fx_wodospad_z_rury_2,s_map_waterfall_kropla,1,0,0)
	part_type_size(global.part_fx_wodospad_z_rury_2,1,2,-0.0115,0);
	part_type_alpha3(global.part_fx_wodospad_z_rury_2,0,1,0);
	part_type_life(global.part_fx_wodospad_z_rury_2,50,50);
	part_type_direction(global.part_fx_wodospad_z_rury_2,-20,20,0,0)
	part_type_orientation(global.part_fx_wodospad_z_rury_2,-20,20,2,0,0)
	part_type_speed(global.part_fx_wodospad_z_rury_2,4,6,0,0)
	part_type_gravity(global.part_fx_wodospad_z_rury_2,0.125,-90)



	global.part_fx_wodospad_z_rury_3=part_type_create() // Point block efe
	part_type_sprite(global.part_fx_wodospad_z_rury_3,global.water_ruren_collapse,1,0,0)
	part_type_size(global.part_fx_wodospad_z_rury_3,1,2,-0.0115,0);
	part_type_alpha3(global.part_fx_wodospad_z_rury_3,0,1,0);
	part_type_life(global.part_fx_wodospad_z_rury_3,50,50);
	part_type_direction(global.part_fx_wodospad_z_rury_3,0,0,0,0)
	part_type_orientation(global.part_fx_wodospad_z_rury_3,-820,820,3,1,0)
	part_type_speed(global.part_fx_wodospad_z_rury_3,6,6,0,0)
	part_type_gravity(global.part_fx_wodospad_z_rury_3,0.125,-90)



	global.part_fast_coin_sparcle=part_type_create() // Point block efe
	part_type_sprite(global.part_fast_coin_sparcle,global.coin_sparcle,1,0,0)
	part_type_size(global.part_fast_coin_sparcle,1,1,0.1,0);
	part_type_alpha3(global.part_fast_coin_sparcle,0,1,0);
	part_type_life(global.part_fast_coin_sparcle,2,5);
	part_type_blend(global.part_fast_coin_sparcle,1)



	global.part_water_waves=part_type_create() // Point block efe
	part_type_sprite(global.part_water_waves,global.water_waves,1,0,0)
	part_type_size(global.part_water_waves,0.5,1.2,-0.0015,0);
	part_type_alpha3(global.part_water_waves,0,1,0);
	part_type_life(global.part_water_waves,20,80);
	part_type_blend(global.part_water_waves,1)




	global.part_water_waves2=part_type_create() // Point block efe
	part_type_sprite(global.part_water_waves2,global.reflex_wody,1,0,0)
	part_type_size(global.part_water_waves2,1,1.2,0,0);
	part_type_alpha3(global.part_water_waves2,0,1,0);
	part_type_life(global.part_water_waves2,20,50);
	part_type_blend(global.part_water_waves2,1)

	global.part_water_waves3=part_type_create() // Point block efe
	part_type_sprite(global.part_water_waves3,global.reflex_wody,1,0,0)
	part_type_size(global.part_water_waves3,0.8,1.5,0,0);
	part_type_alpha3(global.part_water_waves3,0,1,0);
	part_type_life(global.part_water_waves3,220,250);
	part_type_blend(global.part_water_waves3,1)
	part_type_orientation(global.part_water_waves3,-20,20,0.001,0.001,1)





	global.part_lava_smoke_leci_do_gory3=part_type_create() // Point block efe
	part_type_sprite(global.part_lava_smoke_leci_do_gory3,global.gfx_lava_smoke,1,0,0)
	part_type_size(global.part_lava_smoke_leci_do_gory3,4,5,-0.0015,0);
	part_type_alpha3(global.part_lava_smoke_leci_do_gory3,0,0.5,0);
	part_type_life(global.part_lava_smoke_leci_do_gory3,120,120);
	part_type_direction(global.part_lava_smoke_leci_do_gory3,90,90,0,0);
	part_type_orientation(global.part_lava_smoke_leci_do_gory3,0,360,0.1,0,0);
	part_type_speed(global.part_lava_smoke_leci_do_gory3,7,8,0,0);



	global.part_lava_smoke_leci_do_gory2=part_type_create() // Point block efe
	part_type_sprite(global.part_lava_smoke_leci_do_gory2,global.gfx_lava_smoke,1,0,0)
	part_type_size(global.part_lava_smoke_leci_do_gory2,2,3,-0.0015,0);
	part_type_alpha3(global.part_lava_smoke_leci_do_gory2,0,0.5,0);
	part_type_life(global.part_lava_smoke_leci_do_gory2,120,120);
	part_type_direction(global.part_lava_smoke_leci_do_gory2,90,90,0,0);
	part_type_orientation(global.part_lava_smoke_leci_do_gory2,0,360,0.1,0,0);
	part_type_speed(global.part_lava_smoke_leci_do_gory2,5,6,0,0);



	global.part_lava_smoke_leci_do_gory=part_type_create() // Point block efe
	part_type_sprite(global.part_lava_smoke_leci_do_gory,global.gfx_lava_smoke,1,0,0)
	part_type_size(global.part_lava_smoke_leci_do_gory,2,2,-0.0015,0);
	part_type_alpha3(global.part_lava_smoke_leci_do_gory,0,0.5,0);
	part_type_life(global.part_lava_smoke_leci_do_gory,80,120);
	part_type_direction(global.part_lava_smoke_leci_do_gory,90,90,0,0);
	part_type_orientation(global.part_lava_smoke_leci_do_gory,0,360,0.1,0,0);
	part_type_speed(global.part_lava_smoke_leci_do_gory,3,4,0,0);




	global.part_lava_smoke=part_type_create() // Point block efe
	part_type_sprite(global.part_lava_smoke,global.gfx_lava_smoke,1,0,0)
	part_type_size(global.part_lava_smoke,2,2,-0.0015,0);
	part_type_alpha3(global.part_lava_smoke,0,1,0);
	part_type_life(global.part_lava_smoke,40,120);
	part_type_direction(global.part_lava_smoke,90,90,0,0);
	part_type_orientation(global.part_lava_smoke,0,360,0.1,0,0);
	part_type_speed(global.part_lava_smoke,0.5,2,0,0);




	global.part_water_splash[0]=part_type_create() // Point block efe
	part_type_sprite(global.part_water_splash[0],global.gfx_water_splash[0],0,0,0)
	part_type_size(global.part_water_splash[0],1,1,-0.0315,0);
	part_type_alpha3(global.part_water_splash[0],1,0.5,0);
	part_type_life(global.part_water_splash[0],20,50);
	part_type_speed(global.part_water_splash[0],6,8,0,0)
	part_type_direction(global.part_water_splash[0],60,120,0,0)
	part_type_orientation(global.part_water_splash[0],0,0,2,0,0)
	part_type_gravity(global.part_water_splash[0],0.24,270)
	part_type_blend(global.part_water_splash[0],1)

	global.part_water_splash[1]=part_type_create()
	part_type_sprite(global.part_water_splash[1],global.gfx_water_splash[0],0,0,0)
	part_type_size(global.part_water_splash[1],1,1,-0.0015,0);
	part_type_alpha3(global.part_water_splash[1],1,0.5,0);
	part_type_life(global.part_water_splash[1],50,80);
	part_type_speed(global.part_water_splash[1],6,8,0,0)
	part_type_direction(global.part_water_splash[1],60,120,0,0)
	part_type_orientation(global.part_water_splash[1],0,0,2,0,0)
	part_type_gravity(global.part_water_splash[1],0.24,270)
	part_type_blend(global.part_water_splash[1],1)

	global.part_water_splash[2]=part_type_create()
	part_type_sprite(global.part_water_splash[2],global.gfx_water_splash[0],0,0,0)
	part_type_size(global.part_water_splash[2],0.65,0.65,-0.0015,0);
	part_type_alpha3(global.part_water_splash[2],1,0.5,0);
	part_type_life(global.part_water_splash[2],20,40);
	part_type_speed(global.part_water_splash[2],6,8,0,0)
	part_type_direction(global.part_water_splash[2],60,120,0,0)
	part_type_orientation(global.part_water_splash[2],0,0,2,0,0)
	part_type_gravity(global.part_water_splash[2],0.24,270)
	part_type_blend(global.part_water_splash[2],1)



	global.part_effect_torch_fire=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_torch_fire,s_red_glow,1,0,0)
	part_type_size(global.part_effect_torch_fire,0.25,0.5,-0.0115,0);
	part_type_alpha3(global.part_effect_torch_fire,1,0.5,0);
	part_type_life(global.part_effect_torch_fire,20,40);
	part_type_direction(global.part_effect_torch_fire,70,100,0,0)
	part_type_orientation(global.part_effect_torch_fire,0,0,2,0,0)
	part_type_speed(global.part_effect_torch_fire,1,3,0,0)


	global.ducher_energy=1000
	global.ducher_x=0
	global.ducher_y=0
	global.ducher_ladowanie=0
	global.ducher_zamieniony=0
	global.ducher_wracaj=0





	// TWORZENIE PARTICLESOW

	global.particle_sys_1=part_system_create()
	part_system_automatic_update(global.particle_sys_1,1)

	global.particle_sys_2=part_system_create()
	part_system_automatic_update(global.particle_sys_1,1)
	part_system_depth(global.particle_sys_2,-9000000) 

	global.particle_sys_3=part_system_create()
	part_system_automatic_update(global.particle_sys_1,1)
	part_system_depth(global.particle_sys_2,9000) 


	global.part_point_block=part_type_create() // Point block - question sign
	part_type_sprite(global.part_point_block,global.gfx_point_block_u,1,0,0)
	part_type_size(global.part_point_block,1.4,1.4,-0.0115,0);
	part_type_alpha3(global.part_point_block,1,0.5,0);
	part_type_life(global.part_point_block,20,30);
	part_type_speed(global.part_point_block,6,8,0,0)
	part_type_direction(global.part_point_block,80,100,0,0)
	part_type_orientation(global.part_point_block,0,0,2,0,0)
	part_type_gravity(global.part_point_block,0.24,270)



	global.part_zdobycie_monety=part_type_create() // Point block efe
	part_type_sprite(global.part_zdobycie_monety,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_zdobycie_monety,0.5,0.25,-0.0315,0);
	part_type_alpha3(global.part_zdobycie_monety,0.5,0.5,0);
	part_type_life(global.part_zdobycie_monety,5,10);



	global.part_effect_star=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_star,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_effect_star,1,1,-0.0315,0);
	part_type_alpha3(global.part_effect_star,1,0.5,0);
	part_type_life(global.part_effect_star,20,30);
	part_type_speed(global.part_effect_star,6,8,0,0)
	part_type_direction(global.part_effect_star,60,120,0,0)
	part_type_orientation(global.part_effect_star,0,0,2,0,0)
	part_type_gravity(global.part_effect_star,0.24,270)

	global.part_effect_star2=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_star2,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_effect_star2,0.3,0.6,-0.0615,0);
	part_type_alpha3(global.part_effect_star2,1,0.5,0);
	part_type_life(global.part_effect_star2,20,30);
	part_type_direction(global.part_effect_star2,60,120,0,0)
	part_type_orientation(global.part_effect_star2,0,0,2,0,0)

	global.part_effect_star3=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_star3,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_effect_star3,0.3,0.5,-0.0315,0);
	part_type_alpha3(global.part_effect_star3,1,0.5,0);
	part_type_life(global.part_effect_star3,30,120);
	part_type_direction(global.part_effect_star3,90,90,0,0)
	part_type_orientation(global.part_effect_star3,0,0,2,0,0)
	part_type_speed(global.part_effect_star3,1,8,0,0)

	global.part_effect_star4=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_star2,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_effect_star2,0.3,1,-0.0615,0);
	part_type_alpha3(global.part_effect_star2,1,0.5,0);
	part_type_life(global.part_effect_star2,40,80);
	part_type_direction(global.part_effect_star2,60,120,0,0)
	part_type_orientation(global.part_effect_star2,0,0,2,0,0)


	global.part_effect_smoke=part_type_create() // Point block efe
	part_type_shape(global.part_effect_smoke,pt_shape_flare)
	part_type_size(global.part_effect_smoke,0.5,2,-0.0315,0);
	part_type_alpha3(global.part_effect_smoke,1,0.5,0);
	part_type_life(global.part_effect_smoke,30,120);
	part_type_direction(global.part_effect_smoke,70,100,0,0)
	part_type_orientation(global.part_effect_smoke,0,0,2,0,0)
	part_type_speed(global.part_effect_smoke,0.1,1,0,0)


	global.part_effect_smoke_big=part_type_create() // Point block efe
	part_type_shape(global.part_effect_smoke,pt_shape_flare)
	part_type_size(global.part_effect_smoke_big,20,40,-0.0315,0);
	part_type_alpha3(global.part_effect_smoke_big,1,0.5,0);
	part_type_life(global.part_effect_smoke_big,50,120);
	part_type_direction(global.part_effect_smoke_big,70,100,0,0)
	part_type_orientation(global.part_effect_smoke_big,0,0,2,0,0)
	part_type_speed(global.part_effect_smoke_big,1,2,0,0)


	global.part_effect_kick=part_type_create() // Kick effect
	part_type_sprite(global.part_effect_kick,global.gfx_pow,1,0,0)
	part_type_size(global.part_effect_kick,1,1,-0.0115,0);
	part_type_alpha3(global.part_effect_kick,1,0.75,0);
	part_type_life(global.part_effect_kick,30,60);
	part_type_direction(global.part_effect_kick,-30,30,0,0)
	part_type_orientation(global.part_effect_kick,-30,30,0,0,0)






	global.part_effect_racoon_ogon=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_racoon_ogon,ef_flare,1,0,0)
	part_type_size(global.part_effect_racoon_ogon,20,20,0,0);
	part_type_alpha3(global.part_effect_racoon_ogon,1,0.5,0);
	part_type_life(global.part_effect_racoon_ogon,50,50);
	part_type_direction(global.part_effect_racoon_ogon,0,360,0,0)
	part_type_speed(global.part_effect_racoon_ogon,0.5,0.5,0,0)


	global.part_effect_star5=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_star5,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_effect_star5,0.3,0.6,-0.0315,0);
	part_type_alpha3(global.part_effect_star5,1,0.5,0);
	part_type_life(global.part_effect_star5,30,120);
	part_type_direction(global.part_effect_star5,0,360,0,0)
	part_type_orientation(global.part_effect_star5,0,0,2,0,0)
	part_type_speed(global.part_effect_star5,0.1,2,0,0)


	global.part_effect_star5_gravity=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_star5_gravity,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_effect_star5_gravity,0.3,0.5,-0.0115,0);
	part_type_alpha3(global.part_effect_star5_gravity,1,0.5,0);
	part_type_life(global.part_effect_star5_gravity,20,30);
	part_type_direction(global.part_effect_star5_gravity,0,360,0,0)
	part_type_orientation(global.part_effect_star5_gravity,0,0,2,0,0)
	part_type_speed(global.part_effect_star5_gravity,2,4,0,0)
	part_type_gravity(global.part_effect_star5_gravity,0.1,270)



	global.part_effect_music_box=part_type_create() // Music Box Efee
	part_type_sprite(global.part_effect_music_box,global.gfx_point_music_box_nuta,1,0,0)
	part_type_size(global.part_effect_music_box,1,1.2,-0.0115,0);
	part_type_alpha3(global.part_effect_music_box,1,0.5,0);
	part_type_life(global.part_effect_music_box,20,60);
	part_type_speed(global.part_effect_music_box,1,4,0,1);
	part_type_direction(global.part_effect_music_box,0,360,0,0)
	part_type_orientation(global.part_effect_music_box,0,360,2,0,0)

	global.part_effect_lisciong=part_type_create() // efekty wyjmowania burakow
	part_type_sprite(global.part_effect_lisciong,global.gfx_lisciong_1,1,0,0)
	part_type_size(global.part_effect_lisciong,0.1,1,-0.0015,0);
	part_type_alpha3(global.part_effect_lisciong,1,0.5,0);
	part_type_life(global.part_effect_lisciong,60,130);
	part_type_speed(global.part_effect_lisciong,1,6,0,0)
	part_type_direction(global.part_effect_lisciong,0,120,0,0)
	part_type_orientation(global.part_effect_lisciong,0,360,2,0,0)
	part_type_gravity(global.part_effect_lisciong,0.05,270)

	global.part_effect_lisciong2=part_type_create() // efekty wyjmowania burakow - szybko znikaj�cy
	part_type_sprite(global.part_effect_lisciong2,global.gfx_lisciong_1,1,0,0)
	part_type_size(global.part_effect_lisciong2,0.1,0.75,-0.0015,0);
	part_type_alpha3(global.part_effect_lisciong2,1,0.5,0);
	part_type_life(global.part_effect_lisciong2,30,60);
	part_type_speed(global.part_effect_lisciong2,1,6,0,0)
	part_type_direction(global.part_effect_lisciong2,0,120,0,0)
	part_type_orientation(global.part_effect_lisciong2,0,360,2,0,0)
	part_type_gravity(global.part_effect_lisciong2,0.05,270)

	global.part_falling_brick=part_type_create() // Point block efe
	part_type_sprite(global.part_falling_brick,global.gfx_falling_brick,1,0,0)
	part_type_size(global.part_falling_brick,0.1,1.2,-0.0115,0);
	part_type_alpha3(global.part_falling_brick,1,0.5,0);
	part_type_life(global.part_falling_brick,20,230);
	part_type_speed(global.part_falling_brick,6,8,0,0)
	part_type_direction(global.part_falling_brick,50,130,0,0)
	part_type_orientation(global.part_falling_brick,0,360,0,0,0)
	part_type_gravity(global.part_falling_brick,0.24,270)

	global.part_falling_brick2=part_type_create() // Point block efe
	part_type_sprite(global.part_falling_brick2,global.gfx_falling_brick2,1,0,0)
	part_type_size(global.part_falling_brick2,0.1,1.2,-0.0115,0);
	part_type_alpha3(global.part_falling_brick2,1,0.5,0);
	part_type_life(global.part_falling_brick2,20,230);
	part_type_speed(global.part_falling_brick2,6,8,0,0)
	part_type_direction(global.part_falling_brick2,50,130,0,0)
	part_type_orientation(global.part_falling_brick2,0,360,0,0,0)
	part_type_gravity(global.part_falling_brick2,0.24,270)

	global.part_falling_white_star=part_type_create() // Point block efe
	part_type_sprite(global.part_falling_white_star,global.gfx_effect_star2,1,0,0)
	part_type_size(global.part_falling_white_star,0.1,1.5,-0.0115,0);
	part_type_alpha3(global.part_falling_white_star,1,0.5,0);
	part_type_life(global.part_falling_white_star,20,230);
	part_type_speed(global.part_falling_white_star,6,8,0,0)
	part_type_direction(global.part_falling_white_star,50,130,0,0)
	part_type_orientation(global.part_falling_white_star,0,360,0,0,0)
	part_type_gravity(global.part_falling_white_star,0.24,270)

	global.part_falling_white_star2=part_type_create() // Point block efe
	part_type_sprite(global.part_falling_white_star2,global.gfx_effect_star2,1,0,0)
	part_type_size(global.part_falling_white_star2,0.1,1,-0.0115,0);
	part_type_alpha3(global.part_falling_white_star2,1,0.5,0);
	part_type_life(global.part_falling_white_star2,10,40);
	part_type_speed(global.part_falling_white_star2,0.1,2,0,0)
	part_type_direction(global.part_falling_white_star2,0,0,0,0)
	part_type_orientation(global.part_falling_white_star2,0,360,0,0,0)
	part_type_gravity(global.part_falling_white_star2,0.24,270)


	global.part_effect_monty_digging=part_type_create() // efekty kopania monty mole
	part_type_sprite(global.part_effect_monty_digging,s_monte_mole_digging,1,0,0)
	part_type_size(global.part_effect_monty_digging,0.1,1,-0.0015,0);
	part_type_alpha3(global.part_effect_monty_digging,1,0.5,0);
	part_type_life(global.part_effect_monty_digging,60,130);
	part_type_speed(global.part_effect_monty_digging,1,6,0,0)
	part_type_direction(global.part_effect_monty_digging,0,120,0,0)
	part_type_orientation(global.part_effect_monty_digging,0,360,2,0,0)
	part_type_gravity(global.part_effect_monty_digging,0.05,270)

	global.part_cegielka_zamku_1=part_type_create() // efekty kopania monty mole
	part_type_sprite(global.part_cegielka_zamku_1,s_cegielka_zamku_1,1,0,0)
	part_type_size(global.part_cegielka_zamku_1,0.1,1,-0.0015,0);
	part_type_alpha3(global.part_cegielka_zamku_1,1,1,0);
	part_type_life(global.part_cegielka_zamku_1,60,150);
	part_type_speed(global.part_cegielka_zamku_1,3,10,0,0)
	part_type_direction(global.part_cegielka_zamku_1,90,180,0,0)
	part_type_orientation(global.part_cegielka_zamku_1,0,360,2,0,0)
	part_type_gravity(global.part_cegielka_zamku_1,0.1,270)

	global.part_cegielka_zamku_2=part_type_create() // efekty kopania monty mole
	part_type_sprite(global.part_cegielka_zamku_2,s_cegielka_zamku_2,1,0,0)
	part_type_size(global.part_cegielka_zamku_2,0.1,1,-0.0015,0);
	part_type_alpha3(global.part_cegielka_zamku_2,1,1,0);
	part_type_life(global.part_cegielka_zamku_2,60,150);
	part_type_speed(global.part_cegielka_zamku_2,3,10,0,0)
	part_type_direction(global.part_cegielka_zamku_2,90,180,0,0)
	part_type_orientation(global.part_cegielka_zamku_2,0,360,2,0,0)
	part_type_gravity(global.part_cegielka_zamku_2,0.1,270)



	global.part_effect_torch_star=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_torch_star,s_fireball_boom,1,0,0)
	part_type_size(global.part_effect_torch_star,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_torch_star,1,0.5,0);
	part_type_life(global.part_effect_torch_star,20,30);
	part_type_direction(global.part_effect_torch_star,70,100,0,0)
	part_type_orientation(global.part_effect_torch_star,0,0,2,0,0)
	part_type_speed(global.part_effect_torch_star,1,5,0,0)



	global.part_fireball_tail_fire2=part_type_create() // Point block efe
	part_type_sprite(global.part_fireball_tail_fire2,s_fireball_boom,1,0,0)
	part_type_size(global.part_fireball_tail_fire2,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_fireball_tail_fire2,1,0.5,0);
	part_type_life(global.part_fireball_tail_fire2,20,30);
	part_type_direction(global.part_fireball_tail_fire2,70,100,0,0)
	part_type_orientation(global.part_fireball_tail_fire2,0,0,2,0,0)
	part_type_speed(global.part_fireball_tail_fire2,1,3,0,0)





	global.part_fireball_tail_fire=part_type_create() // Point block efe
	part_type_sprite(global.part_fireball_tail_fire,global.gfx_effect_star,1,0,0)
	part_type_size(global.part_fireball_tail_fire,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_fireball_tail_fire,1,0.5,0);
	part_type_life(global.part_fireball_tail_fire,20,50);
	part_type_direction(global.part_fireball_tail_fire,70,100,0,0)
	part_type_orientation(global.part_fireball_tail_fire,0,0,2,0,0)
	part_type_speed(global.part_fireball_tail_fire,1,3,0,0)







	if global.graphics=6
	    {
	    global.part_water_splash[3]=part_type_create()
	    part_type_sprite(global.part_water_splash[3],s_changer,0,0,0)
	    part_type_size(global.part_water_splash[3],0.65,0.65,-0.0015,0);
	    part_type_alpha3(global.part_water_splash[3],1,0.5,0);
	    part_type_life(global.part_water_splash[3],20,40);
	    part_type_speed(global.part_water_splash[3],6,8,0,0)
	    part_type_direction(global.part_water_splash[3],60,120,0,0)
	    part_type_orientation(global.part_water_splash[3],0,0,2,0,0)
	    part_type_gravity(global.part_water_splash[3],0.24,270)
	    part_type_blend(global.part_water_splash[3],1)
    
	    global.part_effect_water_1=part_type_create() // Point block efe
	    part_type_sprite(global.part_effect_water_1,global.gfx_effect_star,1,0,0)
	    part_type_size(global.part_effect_water_1,0.8,0.1,-0.0515,0);
	    part_type_alpha3(global.part_effect_water_1,0.4,0.2,0);
	    part_type_life(global.part_effect_water_1,5,10);
	    part_type_blend(global.part_effect_water_1,1) 
	    }





	    // WGRAJ ELEMENTY MAPY
    
    
    
	    // skopiuj te zmienne do gry i bossow

	global.efektuj_przejscie_mapy=0
	global.map_completed_sequence=0 // ustawiasz to w etapie jak Mario ma przejsc do kolejnej mapy na 100, a jak ma przejsc do konkretnego etapu ustaw na 1-8 (sekrety)





	// PARTICLES KTORE WYSTEPUJA TYLKO NA MAPIE - TRZEBA JE DODAC DO GRY

	global.part_effect_water_sparkle_lawa=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_water_sparkle_lawa,s_map_firewall_kropla,1,0,0)
	part_type_size(global.part_effect_water_sparkle_lawa,0.5,1.2,-0.0115,0);
	part_type_alpha3(global.part_effect_water_sparkle_lawa,0,1,0);
	part_type_life(global.part_effect_water_sparkle_lawa,80,80);
	part_type_direction(global.part_effect_water_sparkle_lawa,80,100,0,0)
	part_type_orientation(global.part_effect_water_sparkle_lawa,-20,20,2,0,0)
	part_type_speed(global.part_effect_water_sparkle_lawa,1,3.5,0,0)
	part_type_gravity(global.part_effect_water_sparkle_lawa,0.085,-90)

	global.part_effect_water_sparkle_lawa2=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_water_sparkle_lawa2,s_map_firewall_kropla,1,0,0)
	part_type_size(global.part_effect_water_sparkle_lawa2,1,1.4,-0.0115,0);
	part_type_alpha3(global.part_effect_water_sparkle_lawa2,0,1,0);
	part_type_life(global.part_effect_water_sparkle_lawa2,40,60);
	part_type_direction(global.part_effect_water_sparkle_lawa2,-80,-100,0,0)
	part_type_orientation(global.part_effect_water_sparkle_lawa2,-20,20,2,0,0)
	part_type_speed(global.part_effect_water_sparkle_lawa2,0,0,0,0)
	part_type_gravity(global.part_effect_water_sparkle_lawa2,0.085,-90)




	global.part_effect_water_sparkle_wodo=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_water_sparkle_wodo,s_map_sparkling,1,0,0)
	part_type_size(global.part_effect_water_sparkle_wodo,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_water_sparkle_wodo,0,1,0);
	part_type_life(global.part_effect_water_sparkle_wodo,10,50);
	part_type_direction(global.part_effect_water_sparkle_wodo,-20,20,0,0)
	part_type_orientation(global.part_effect_water_sparkle_wodo,-20,20,2,0,0)
	part_type_speed(global.part_effect_water_sparkle_wodo,1,1.5,0,0)
	part_type_gravity(global.part_effect_water_sparkle_wodo,0.085,-90)

	global.part_effect_water_sparkle_wodo2=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_water_sparkle_wodo2,s_map_waterfall_kropla,1,0,0)
	part_type_size(global.part_effect_water_sparkle_wodo2,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_water_sparkle_wodo2,0,1,0);
	part_type_life(global.part_effect_water_sparkle_wodo2,10,50);
	part_type_direction(global.part_effect_water_sparkle_wodo2,-20,20,0,0)
	part_type_orientation(global.part_effect_water_sparkle_wodo2,-20,20,2,0,0)
	part_type_speed(global.part_effect_water_sparkle_wodo2,1,1.5,0,0)
	part_type_gravity(global.part_effect_water_sparkle_wodo2,0.085,-90)

	global.part_effect_water_sparkle_wodo3=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_water_sparkle_wodo3,s_map_sparkling,1,0,0)
	part_type_size(global.part_effect_water_sparkle_wodo3,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_water_sparkle_wodo3,0,1,0);
	part_type_life(global.part_effect_water_sparkle_wodo3,10,50);
	part_type_direction(global.part_effect_water_sparkle_wodo3,-20+180,20+180,0,0)
	part_type_orientation(global.part_effect_water_sparkle_wodo3,-20+180,20+180,2,0,0)
	part_type_speed(global.part_effect_water_sparkle_wodo3,1,1.5,0,0)
	part_type_gravity(global.part_effect_water_sparkle_wodo3,0.085,-90)

	global.part_effect_water_sparkle_wodo4=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_water_sparkle_wodo4,s_map_waterfall_kropla,1,0,0)
	part_type_size(global.part_effect_water_sparkle_wodo4,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_water_sparkle_wodo4,0,1,0);
	part_type_life(global.part_effect_water_sparkle_wodo4,10,50);
	part_type_direction(global.part_effect_water_sparkle_wodo4,-20+180,20+180,0,0)
	part_type_orientation(global.part_effect_water_sparkle_wodo4,-20+180,20+180,2,0,0)
	part_type_speed(global.part_effect_water_sparkle_wodo4,1,1.5,0,0)
	part_type_gravity(global.part_effect_water_sparkle_wodo4,0.085,-90)


	// zmienne dodane na mapie - dodaj do initializacji gry
	global.przenies_do_etapu=0 // przenosi mario do innego etapu na mapie o ile ten zawiera zmienna "przenies do etapu" w innym przypadku ta zmioenna rowna sie 0

	// GRAFIKI MAPY - DODAJ JE DO GRY


	global.part_komin_smoke=part_type_create() // Point block efe
	part_type_shape(global.part_komin_smoke,pt_shape_smoke)
	part_type_size(global.part_komin_smoke,0.2,0.5,-0.0015,0);
	part_type_alpha3(global.part_komin_smoke,0,1,0);
	part_type_life(global.part_komin_smoke,90,120);
	part_type_speed(global.part_komin_smoke,0.1,0.5,0,0)
	part_type_direction(global.part_komin_smoke,90,90,0,0)







	global.map_number_save=0 // kazda mapa musi miec inna wartosc
	global.map_wgraj_wartosci=0 // po powrocie na mape wgraj wartosci mapy
	global.id_of_killed_atacker=0 // zmienna uzywana jest do oznaczania przeciwnika na mapie ktory zaatakowal mario i przegral
	global.kill_atacker=0 // czy ma zabic atakujacego wroga na mapie
	global.chwilowy_stopper=0 // zatrzymaj wszystko podczas ataku na mapie
	global.uzyto_stoppera=0
	global.mario_skusil=0 // mario skusil w etapie lub przegral pojedynek =1 przegral w etapie = 2 przegral pojedynek z przeciwnikiem na mapie
	global.mario_skusil_id=0 // mario po skuszeniu nagrywa do globalnej wartosci ID ostatniego punktu, tak aby przeciwnicy uciekli od niego jezeli na nim stoja
	global.mario_wszedl_do_etapu=0 // pobierz nazwe roomu do ktorego wszedl mario jest to jednoczesnie wartosc ktora sprawdza czy mario w ogole wszedl <>0 oznacza ze wszedl =0 ze moze chodzic po mapie
	global.mario_completed_stage=0 // jak wychodzi z etapu do mapy to czy Mario pokonał etap?
	global.mario_ktory_pokonal=0 // ktory etap ma sie zaznaczyc jako pokonany?

	global.map_baw_sie_scroolem_map_x=0 // modyfikuj przesuniecie scroola na mapie w zaleznosci od pozycji na mapie :)
	global.map_baw_sie_scroolem_map_y=0 // modyfikuj przesuniecie scroola na mapie w zaleznosci od pozycji na mapie :)
	global.map_baw_sie_scroolem_map_x2=0 // modyfikuj przesuniecie scroola na mapie w zaleznosci od pozycji na mapie :)
	global.map_baw_sie_scroolem_map_y2=0 // modyfikuj przesuniecie scroola na mapie w zaleznosci od pozycji na mapie :)

	// 1 - odkryta mama, 2 - pokonana
	global.map_na_ktorej_jest_aktualnie=0
	global.map_numbers=8
	global.map_completed[0]=1 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[1]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[2]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[3]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[4]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[5]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[6]=0 // ktore mapy sa pokonane i gracz moze wybierac
	global.map_completed[7]=0 // ktore mapy sa pokonane i gracz moze wybierac

	global.ship_on_map[0]=0 // czy na mapie jest juz statek, jak jest i zostal pokonany to Mario przechodzi do nastepnej mapy
	global.ship_on_map[1]=0 // czy na mapie jest juz statek, jak jest i zostal pokonany to Mario przechodzi do nastepnej mapy
	global.ship_on_map[2]=0 // czy na mapie jest juz statek, jak jest i zostal pokonany to Mario przechodzi do nastepnej mapy
	global.ship_on_map[3]=0 // czy na mapie jest juz statek, jak jest i zostal pokonany to Mario przechodzi do nastepnej mapy
	global.ship_on_map[4]=0 // czy na mapie jest juz statek, jak jest i zostal pokonany to Mario przechodzi do nastepnej mapy
	global.ship_on_map[5]=0 // czy na mapie jest juz statek, jak jest i zostal pokonany to Mario przechodzi do nastepnej mapy
	global.ship_on_map[6]=0 // czy na mapie jest juz statek, jak jest i zostal pokonany to Mario przechodzi do nastepnej mapy
	global.ship_on_map[7]=10 // na tej MAPIE nie ma statku

	global.map_open_road=0 // czy algorytm ma pokazac tworzaca sie droge na mapie
	global.map_open_road_id=0 // jakiemu etapowi otworzyc droge?

	global.map_key_level_id=0 // zmienna definowana tylko w ETAPIE! nie na mapie!
	global.map_key_level_collected=0 // czy mario zdobyl klucz i odblokowuje brame na mapie?


	// te zmienne trzeba dozycic do algorytmow gry gdyz ich tam jeszcze nie ma
	global.magic_stars=0
	global.game_over=0


	// zmienne initializujace mape

	global.save_map_init[0,0]=0
	global.save_map_init[1,0]=0
	global.save_map_init[2,0]=0

	global.save_map_init[0,1]=0
	global.save_map_init[1,1]=0
	global.save_map_init[2,1]=0

	global.hex_save_pos=0 // ta zmienna musi się zmieniac dynamicznie w zaleznosci od wyboru zapisu przez gracza
	global.choosed_save=0 // ta zmienna musi się zmieniac dynamicznie w zaleznosci od wyboru zapisu przez gracza





	// TO JEST DO INITIALIZACJI ZMIENNYCH ILOSCI POSIADANYCH PRZEDMIOTOW, GRA TYCH WARTOSCI JESZCZE NIE POSIADA

	global.map_uzyto_budzika=0
	global.map_uzyto_gwiazdki=0

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


	global.unknown_key_1=0
	global.unknown_key_2=0
	global.unknown_key_3=0
	global.unknown_key_4=0
	global.unknown_key_5=0
	global.unknown_key_6=0






	// to skasuj bo juz jest w initialize

	global.punkty=0
	global.step=0
	global.rodzaj_mario=0
	global.roznica=0
	global.oberwal=0 // 1 - strata power-upa, 2 - instant kill
	global.energia=8 // dla wersji mario z energia
	global.zycia=4
	global.coins=0
	global.coins_red=0

	global.particle_sys_1=part_system_create()
	part_system_automatic_update(global.particle_sys_1,1)

	global.pauza=0



	zapis888=hex_open("./data/gfx/groundstomp.png")
	global.windowed=hex_read(zapis888,0);
	global.aktual_music_volume=hex_read(zapis888,1);
	global.glosnosc_dzwieku=hex_read(zapis888,2);



	global.ster_up=hex_read(zapis888,3);
	global.ster_down=hex_read(zapis888,4);
	global.ster_left=hex_read(zapis888,5);
	global.ster_right=hex_read(zapis888,6);
	global.ster_jump=hex_read(zapis888,7);
	global.ster_fire=hex_read(zapis888,8);
	hex_close(zapis888)




	global.odleglosc_ekranu=0
	global.ekran_srodek_x=0
	global.ekran_srodek_y=0






	// tu juz sa osobne zmienne - nie kasowac
	// to mozna w BIEGU MODYFIKOWAC - DEPTH
	global.particle_map_sterring=part_system_create()
	part_system_automatic_update(global.particle_map_sterring,1)
	part_system_depth(global.particle_map_sterring,0) 



	global.particle_map_za_mario=part_system_create()
	part_system_automatic_update(global.particle_map_za_mario,1)
	part_system_depth(global.particle_map_za_mario,0) 

	global.particle_map_przed_mario=part_system_create()
	part_system_automatic_update(global.particle_map_przed_mario,1)
	part_system_depth(global.particle_map_przed_mario,0) 



	global.particle_map_overscreen=part_system_create()
	part_system_automatic_update(global.particle_map_za_mario,1)
	part_system_depth(global.particle_map_overscreen,0) 



	// tu juz sa osobne zmienne - nie kasowac
	global.particle_maps_water=part_system_create()
	part_system_automatic_update(global.particle_sys_1,1)

	global.particle_map_zamkowyglow=part_system_create()
	part_system_depth(global.particle_map_zamkowyglow,0) 
	part_system_automatic_update(global.particle_map_zamkowyglow,1)

	// particle wyswietlany ponad wszystkie inne procz HUD'a
	global.particle_map_overscreen=part_system_create()
	part_system_depth(global.particle_map_overscreen,-999999) 
	part_system_automatic_update(global.particle_map_overscreen,1)




	global.part_effect_map_watering_2=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_map_watering_2,s_map_efecter_1,1,0,0)
	part_type_size(global.part_effect_map_watering_2,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_map_watering_2,0.5,0.5,0);
	part_type_life(global.part_effect_map_watering_2,120,120);
	part_type_speed(global.part_effect_map_watering_2,0.1,0.1,0,0)
	part_type_direction(global.part_effect_map_watering_2,90,80,0,0)


	global.part_effect_smoker_mapmini=part_type_create() // MINI SMOKE DLA RYBY PLYWAJACEJ W WODZIE
	part_type_shape(global.part_effect_smoker_mapmini,pt_shape_cloud)
	part_type_size(global.part_effect_smoker_mapmini,0.5,0.75,-0.0015,0);
	part_type_alpha3(global.part_effect_smoker_mapmini,0,1,0);
	part_type_life(global.part_effect_smoker_mapmini,20,40);
	part_type_speed(global.part_effect_smoker_mapmini,0.1,0.5,0,0)
	part_type_direction(global.part_effect_smoker_mapmini,0,0,0,0)




	global.part_effect_smoker_map=part_type_create() // SMOKE
	part_type_shape(global.part_effect_smoker_mapmini,pt_shape_cloud)
	part_type_size(global.part_effect_smoker_map,20,30,-0.0015,0);
	part_type_alpha3(global.part_effect_smoker_map,0,1,0);
	part_type_life(global.part_effect_smoker_map,10,40);
	part_type_speed(global.part_effect_smoker_map,0.1,0.5,0,0)
	part_type_direction(global.part_effect_smoker_map,0,360,0,0)

	global.part_effect_red_smoke=part_type_create() // SMOKE
	part_type_sprite(global.part_effect_red_smoke,s_map_red_glow,1,0,0)
	part_type_size(global.part_effect_red_smoke,0.25,1,-0.0015,0);
	part_type_alpha3(global.part_effect_red_smoke,0,1,0);
	part_type_life(global.part_effect_red_smoke,10,40);
	part_type_speed(global.part_effect_red_smoke,0.1,0.5,0,0)
	part_type_direction(global.part_effect_red_smoke,0,360,0,0)

	global.part_effect_red_smoke=part_type_create() // plywanie po lawie - red glow
	part_type_sprite(global.part_effect_red_smoke,s_map_red_glow,1,0,0)
	part_type_size(global.part_effect_red_smoke,0.25,1,-0.0015,0);
	part_type_alpha3(global.part_effect_red_smoke,0,1,0);
	part_type_life(global.part_effect_red_smoke,10,40);
	part_type_speed(global.part_effect_red_smoke,0.1,0.5,0,0)
	part_type_direction(global.part_effect_red_smoke,0,360,0,0)


	global.part_map_chmurker=part_type_create() // Chmurker jak Mario wyrzucony jest z lokacji
	part_type_sprite(global.part_map_chmurker,s_map_chmurker,1,0,0)
	part_type_size(global.part_map_chmurker,0.5,1,-0.0015,0);
	part_type_alpha3(global.part_map_chmurker,0,1,0);
	part_type_life(global.part_map_chmurker,20,40);
	part_type_speed(global.part_map_chmurker,1,2,-0.015,0)
	part_type_direction(global.part_map_chmurker,0,360,0,0)
	//part_type_orientation(global.part_map_chmurker,0,0,0,0,1)



	global.part_effect_padaboo=part_type_create() // PADABOO FIRE EFFECT TRAIL 
	part_type_sprite(global.part_effect_padaboo,global.gfx_padaboo_2,1,0,0)
	part_type_size(global.part_effect_padaboo,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_padaboo,0,1,0);
	part_type_life(global.part_effect_padaboo,120,120);
	part_type_speed(global.part_effect_padaboo,0.1,0.1,0,0)
	part_type_direction(global.part_effect_padaboo,90,80,0,0)

	global.part_effect_map_podswietlanie=part_type_create() // efekt za budynkiem - takie podswietlanie - poswiata za zamkiem
	part_type_sprite(global.part_effect_map_podswietlanie,s_map_castle_efecter,1,0,0)
	part_type_size(global.part_effect_map_podswietlanie,0.5,2,-0.0115,0);
	part_type_alpha3(global.part_effect_map_podswietlanie,1,1,0);
	part_type_life(global.part_effect_map_podswietlanie,50,100);


	global.part_effect_smoke_map=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_smoke_map,s_map_efecter_1,1,0,0)
	part_type_size(global.part_effect_smoke_map,1,2,-0.0015,0);
	part_type_alpha3(global.part_effect_smoke_map,0,1,0);
	part_type_life(global.part_effect_smoke_map,90,120);
	part_type_speed(global.part_effect_smoke_map,0.1,0.5,0,0)


	global.part_effect_water_sparkle=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_water_sparkle,s_map_sparkling,1,0,0)
	part_type_size(global.part_effect_water_sparkle,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_water_sparkle,0,1,0);
	part_type_life(global.part_effect_water_sparkle,5,20);
	part_type_direction(global.part_effect_water_sparkle,90,80,0,0)
	part_type_orientation(global.part_effect_water_sparkle,0,360,2,0,0)






	global.part_effect_zabierz_bonus=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_zabierz_bonus,s_map_glowwer_1,1,0,0)
	part_type_size(global.part_effect_zabierz_bonus,0.5,1,-0.0115,0);
	part_type_alpha3(global.part_effect_zabierz_bonus,0,1,0);
	part_type_life(global.part_effect_zabierz_bonus,5,20);
	part_type_direction(global.part_effect_zabierz_bonus,90,80,0,0)
	part_type_orientation(global.part_effect_zabierz_bonus,0,360,2,0,0)

	global.part_effect_mapgate=part_type_create() // GATE OUT - NISZCZENIE BRAMY NA KLUCZ
	part_type_sprite(global.part_effect_mapgate,s_map_gate,1,0,0)
	part_type_size(global.part_effect_mapgate,1,1,0.0115,0);
	part_type_alpha3(global.part_effect_mapgate,1,0.5,0);
	part_type_life(global.part_effect_mapgate,20,20);
	part_type_direction(global.part_effect_mapgate,90,90,0,0)
	part_type_orientation(global.part_effect_mapgate,0,0,0,0,0)
	part_type_speed(global.part_effect_mapgate,3,3,0,0)


	global.part_effect_smoke_map_dark=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_smoke_map_dark,s_map_smoke_1,1,0,0)
	part_type_size(global.part_effect_smoke_map_dark,1,2,-0.0015,0);
	part_type_alpha3(global.part_effect_smoke_map_dark,0,0.75,0);
	part_type_life(global.part_effect_smoke_map_dark,90,120);
	part_type_speed(global.part_effect_smoke_map_dark,0.1,0.5,0,0)


	global.part_effect_smoke_map_dark2=part_type_create() // Point block efe
	part_type_sprite(global.part_effect_smoke_map_dark2,s_map_smoke_2,1,0,0)
	part_type_size(global.part_effect_smoke_map_dark2,1,2,-0.0015,0);
	part_type_alpha3(global.part_effect_smoke_map_dark2,0,0.75,0);
	part_type_life(global.part_effect_smoke_map_dark2,90,120);
	part_type_speed(global.part_effect_smoke_map_dark2,0.1,1.5,0,0)




}
