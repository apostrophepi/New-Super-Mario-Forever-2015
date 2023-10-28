function init_sound_base() {
	// SXMS
	global.czestotliwosc_dzwieku=44100
	global.glosnosc_dzwieku=255
	global.glosnosc_muzyki=255
	global.aktual_music_volume=255
 




	global.dzwieksciezka="./data/s/"
	global.jakidzwiek=1


	SXMS_I_Init(global.czestotliwosc_dzwieku,128,0,0,0,0) // initializacja dodatku dzwiekowego
	SXMS_WAP_Init() // initializacja WAP muzy z PSX'a
	SXMS_WAP_LoadPlugOut("out_ds.dll")
	SXMS_WAP_LoadPlugIn("in_psf.dll")
	    SXMS_WAP_Volume(0,global.aktual_music_volume) 
	    SXMS_SFX_MasterVolume(global.aktual_music_volume) 
	  /*
	SXMS_WAP_Init() // initializacja WAP muzy z PSX'a
	SXMS_WAP_LoadPlugOut('out_ds.dll')
	SXMS_WAP_LoadPlugIn('in_psf.dll')*/

	SXMS_WAP_SetPan(0)




	SXMS_C_Loop(0) 


	SXMS_SFX_Load(0,global.dzwieksciezka+"mario_step_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(1,global.dzwieksciezka+"mario_step_2.wav",global.jakidzwiek)
	SXMS_SFX_Load(2,global.dzwieksciezka+"mario_step_jump_1.wav",global.jakidzwiek)


	SXMS_SFX_Load(10,global.dzwieksciezka+"mario_jump_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(11,global.dzwieksciezka+"mario_jump_2.wav",global.jakidzwiek)
	SXMS_SFX_Load(12,global.dzwieksciezka+"mario_jump_3.wav",global.jakidzwiek)
	SXMS_SFX_Load(13,global.dzwieksciezka+"mario_jump_4.wav",global.jakidzwiek)
	SXMS_SFX_Load(19,global.dzwieksciezka+"mario_jump_effect.wav",global.jakidzwiek)
	SXMS_SFX_Load(20,global.dzwieksciezka+"coin.mp3",global.jakidzwiek)
	SXMS_SFX_Load(21,global.dzwieksciezka+"brick.mp3",global.jakidzwiek)
	SXMS_SFX_Load(22,global.dzwieksciezka+"1up.mp3",global.jakidzwiek)
	SXMS_SFX_Load(23,global.dzwieksciezka+"pipe.mp3",global.jakidzwiek)
	SXMS_SFX_Load(24,global.dzwieksciezka+"sec_open.mp3",global.jakidzwiek)

	SXMS_SFX_Load(25,global.dzwieksciezka+"mario_speech_5.wav",global.jakidzwiek)
	SXMS_SFX_Load(26,global.dzwieksciezka+"mario_speech_9.WAV",global.jakidzwiek)
	SXMS_SFX_Load(27,global.dzwieksciezka+"mario_speech_8.WAV",global.jakidzwiek)
	SXMS_SFX_Load(28,global.dzwieksciezka+"end.mp3",global.jakidzwiek)
	SXMS_SFX_Load(29,global.dzwieksciezka+"BGM_COURSE_CLEAR.mp3",global.jakidzwiek)


	SXMS_SFX_Load(30,global.dzwieksciezka+"mario_spin_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(31,global.dzwieksciezka+"mario_spin_2.wav",global.jakidzwiek)

	SXMS_SFX_Load(40,global.dzwieksciezka+"mario_tanooki_to_stone_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(41,global.dzwieksciezka+"mario_tanooki_to_stone_2.wav",global.jakidzwiek)
	SXMS_SFX_Load(42,global.dzwieksciezka+"mario_climb_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(43,global.dzwieksciezka+"Bump.wav",global.jakidzwiek)
	SXMS_SFX_Load(44,global.dzwieksciezka+"Powerup.wav",global.jakidzwiek)
	SXMS_SFX_Load(45,global.dzwieksciezka+"fire.wav",global.jakidzwiek)
	SXMS_SFX_Load(46,global.dzwieksciezka+"hammer.mp3",global.jakidzwiek)
	SXMS_SFX_Load(47,global.dzwieksciezka+"summon_create.snd",global.jakidzwiek)
	SXMS_SFX_Load(48,global.dzwieksciezka+"summon.wav",global.jakidzwiek)
	SXMS_SFX_Load(49,global.dzwieksciezka+"summon_eating.snd",global.jakidzwiek)
	SXMS_SFX_Load(50,global.dzwieksciezka+"summon_splash.snd",global.jakidzwiek)
	SXMS_SFX_Load(51,global.dzwieksciezka+"kick.wav",global.jakidzwiek)
	SXMS_SFX_Load(52,global.dzwieksciezka+"drybones.wav",global.jakidzwiek)
	SXMS_SFX_Load(53,global.dzwieksciezka+"drybones_2.wav",global.jakidzwiek)
	SXMS_SFX_Load(54,global.dzwieksciezka+"thwomp_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(55,global.dzwieksciezka+"thwomp_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(56,global.dzwieksciezka+"stomp.wav",global.jakidzwiek)

	SXMS_SFX_Load(57,global.dzwieksciezka+"mario_wyrywanie_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(58,global.dzwieksciezka+"mario_wyrywanie_2.wav",global.jakidzwiek)



	SXMS_SFX_Load(59,global.dzwieksciezka+"mario_rzut_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(60,global.dzwieksciezka+"mario_rzut_2.wav",global.jakidzwiek)
	SXMS_SFX_Load(61,global.dzwieksciezka+"mario_rzut_3.wav",global.jakidzwiek)
	SXMS_SFX_Load(62,global.dzwieksciezka+"mario_rzut_4.wav",global.jakidzwiek)
	SXMS_SFX_Load(63,global.dzwieksciezka+"mario_rzut_5.wav",global.jakidzwiek)
	SXMS_SFX_Load(64,global.dzwieksciezka+"mario_rzut_6.wav",global.jakidzwiek)
	SXMS_SFX_Load(65,global.dzwieksciezka+"mario_rzut_7_burak_hit.wav",global.jakidzwiek)
	SXMS_SFX_Load(66,global.dzwieksciezka+"mario_rzut_8_bomb_boom.wav",global.jakidzwiek)

	SXMS_SFX_Load(67,global.dzwieksciezka+"cannon_2.wav",global.jakidzwiek)
	SXMS_SFX_Load(68,global.dzwieksciezka+"stomp_2.wav",global.jakidzwiek)

	SXMS_SFX_Load(69,global.dzwieksciezka+"mario_deploy_bomb.ogg",global.jakidzwiek)
	SXMS_SFX_Load(70,global.dzwieksciezka+"bite.mp3",global.jakidzwiek)
	SXMS_SFX_Load(71,global.dzwieksciezka+"cannon_flame_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(72,global.dzwieksciezka+"cannon_flame_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(73,global.dzwieksciezka+"fire_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(74,global.dzwieksciezka+"fire_3.mp3",global.jakidzwiek)
	SXMS_SFX_Load(75,global.dzwieksciezka+"mario_big_explosion_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(76,global.dzwieksciezka+"boomerang.mp3",global.jakidzwiek)

	SXMS_SFX_Load(77,global.dzwieksciezka+"enemy_jumper_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(78,global.dzwieksciezka+"enemy_jumper_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(79,global.dzwieksciezka+"enemy_jumper_3.mp3",global.jakidzwiek)
	SXMS_SFX_Load(80,global.dzwieksciezka+"enemy_jumper_4.mp3",global.jakidzwiek)
	SXMS_SFX_Load(81,global.dzwieksciezka+"enemy_jumper_5.mp3",global.jakidzwiek)
	SXMS_SFX_Load(82,global.dzwieksciezka+"enemy_jumper_throw.mp3",global.jakidzwiek)

	SXMS_SFX_Load(83,global.dzwieksciezka+"mega_stomp_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(84,global.dzwieksciezka+"mega_stomp_2.mp3",global.jakidzwiek)

	SXMS_SFX_Load(85,global.dzwieksciezka+"big_massive_jump_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(86,global.dzwieksciezka+"big_massive_jump_2.mp3",global.jakidzwiek)

	SXMS_SFX_Load(87,global.dzwieksciezka+"enemy_massive_speech_jump_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(88,global.dzwieksciezka+"enemy_massive_speech_jump_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(89,global.dzwieksciezka+"enemy_massive_speech_jump_3.mp3",global.jakidzwiek)
	SXMS_SFX_Load(90,global.dzwieksciezka+"enemy_massive_speech_oberw_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(91,global.dzwieksciezka+"enemy_massive_speech_oberw_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(92,global.dzwieksciezka+"enemy_massive_speech_oberw_3.mp3",global.jakidzwiek)

	SXMS_SFX_Load(93,global.dzwieksciezka+"water_splash_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(94,global.dzwieksciezka+"water_splash_2.mp3",global.jakidzwiek)


	SXMS_SFX_Load(95,global.dzwieksciezka+"mario_swim_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(96,global.dzwieksciezka+"mega_bite.mp3",global.jakidzwiek)

	SXMS_SFX_Load(97,global.dzwieksciezka+"water_plujak_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(98,global.dzwieksciezka+"mole_ground_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(99,global.dzwieksciezka+"Boo.mp3",global.jakidzwiek)

	SXMS_SFX_Load(101,global.dzwieksciezka+"enut_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(102,global.dzwieksciezka+"enut_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(103,global.dzwieksciezka+"machine_working_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(104,global.dzwieksciezka+"machine_working_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(105,global.dzwieksciezka+"machine_working_3.mp3",global.jakidzwiek)
	SXMS_SFX_Load(106,global.dzwieksciezka+"stoner_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(107,global.dzwieksciezka+"ghoster_1.mp3",global.jakidzwiek)

	SXMS_SFX_Load(108,global.dzwieksciezka+"ciurp.mp3",global.jakidzwiek)
	SXMS_SFX_Load(109,global.dzwieksciezka+"BGM_SWITCH.mp3",global.jakidzwiek)
	SXMS_SFX_Load(110,global.dzwieksciezka+"trigger.mp3",global.jakidzwiek)
	SXMS_SFX_Load(111,global.dzwieksciezka+"spit.mp3",global.jakidzwiek)
	SXMS_SFX_Load(112,global.dzwieksciezka+"fly.mp3",global.jakidzwiek)
	SXMS_SFX_Load(113,global.dzwieksciezka+"switch.mp3",global.jakidzwiek)
	SXMS_SFX_Load(114,global.dzwieksciezka+"Stuff Bumps.wav",global.jakidzwiek)
	SXMS_SFX_Load(115,global.dzwieksciezka+"tick.mp3",global.jakidzwiek)
	SXMS_SFX_Load(116,global.dzwieksciezka+"super_star_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(117,global.dzwieksciezka+"vine.mp3",global.jakidzwiek)
	SXMS_SFX_Load(118,global.dzwieksciezka+"check_point.mp3",global.jakidzwiek)

	SXMS_SFX_Load(119,global.dzwieksciezka+"hello1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(120,global.dzwieksciezka+"hello2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(121,global.dzwieksciezka+"chmurkens.mp3",global.jakidzwiek)

	SXMS_SFX_Load(122,global.dzwieksciezka+"okbutton.mp3",global.jakidzwiek)
	SXMS_SFX_Load(123,global.dzwieksciezka+"dialogout.mp3",global.jakidzwiek)
	SXMS_SFX_Load(124,global.dzwieksciezka+"talking.mp3",global.jakidzwiek)

	SXMS_SFX_Load(125,global.dzwieksciezka+"powerdown.mp3",global.jakidzwiek)
	SXMS_SFX_Load(126,global.dzwieksciezka+"wiatraczek.mp3",global.jakidzwiek)
	SXMS_SFX_Load(127,global.dzwieksciezka+"wiatraczek2.mp3",global.jakidzwiek)

	SXMS_SFX_Load(128,global.dzwieksciezka+"mario_dies_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(129,global.dzwieksciezka+"mario_dies_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(130,global.dzwieksciezka+"BGM_VS_LOSE_FANFARE.mp3",global.jakidzwiek)

	SXMS_SFX_Load(131,global.dzwieksciezka+"mario_speech_18.wav",global.jakidzwiek)
	SXMS_SFX_Load(132,global.dzwieksciezka+"mario_speech_13.WAV",global.jakidzwiek)
	SXMS_SFX_Load(133,global.dzwieksciezka+"mario_speech_12.WAV",global.jakidzwiek)

	SXMS_SFX_Load(134,global.dzwieksciezka+"mario_yeha_completed_1.wav",global.jakidzwiek)
	SXMS_SFX_Load(135,global.dzwieksciezka+"mario_yeha_completed_2.wav",global.jakidzwiek)

	SXMS_SFX_Load(136,global.dzwieksciezka+"mario_speech_11.WAV",global.jakidzwiek)
	SXMS_SFX_Load(137,global.dzwieksciezka+"mario_speech_10.WAV",global.jakidzwiek)
	SXMS_SFX_Load(138,global.dzwieksciezka+"game-over.mp3",global.jakidzwiek)
	SXMS_SFX_Load(139,global.dzwieksciezka+"click.mp3",global.jakidzwiek)

	SXMS_SFX_Load(140,global.dzwieksciezka+"select.mp3",global.jakidzwiek)

	SXMS_SFX_Load(141,global.dzwieksciezka+"troopa_map.mp3",global.jakidzwiek)
	SXMS_SFX_Load(142,global.dzwieksciezka+"game_over_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(143,global.dzwieksciezka+"game_over_letsa.mp3",global.jakidzwiek)
	SXMS_SFX_Load(144,global.dzwieksciezka+"game_over_itemwasted.mp3",global.jakidzwiek)
	SXMS_SFX_Load(145,global.dzwieksciezka+"door_opened.mp3",global.jakidzwiek)


	SXMS_SFX_Load(146,global.dzwieksciezka+"secret_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(147,global.dzwieksciezka+"secret_2.mp3",global.jakidzwiek)

	SXMS_SFX_Load(148,global.dzwieksciezka+"statek_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(149,global.dzwieksciezka+"statek_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(150,global.dzwieksciezka+"statek_3.mp3",global.jakidzwiek)


	SXMS_SFX_Load(151,global.dzwieksciezka+"bowser_1.mp3",global.jakidzwiek)

	SXMS_SFX_Load(152,global.dzwieksciezka+"bowser_jump_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(153,global.dzwieksciezka+"bowser_jump_2.mp3",global.jakidzwiek)

	SXMS_SFX_Load(154,global.dzwieksciezka+"bowser_fireball_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(155,global.dzwieksciezka+"bowser_fireball_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(156,global.dzwieksciezka+"bowser_fireball_3.mp3",global.jakidzwiek)

	SXMS_SFX_Load(157,global.dzwieksciezka+"bowser_kula.mp3",global.jakidzwiek)

	SXMS_SFX_Load(158,global.dzwieksciezka+"bowser_engine_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(159,global.dzwieksciezka+"bowser_flame.mp3",global.jakidzwiek)
	SXMS_SFX_Load(160,global.dzwieksciezka+"boom_boom_throw_ball.mp3",global.jakidzwiek)
	SXMS_SFX_Load(161,global.dzwieksciezka+"boom_boom_jump.mp3",global.jakidzwiek)

	SXMS_SFX_Load(162,global.dzwieksciezka+"boom_boom_hit.mp3",global.jakidzwiek)
	SXMS_SFX_Load(163,global.dzwieksciezka+"boom_boom_hit.mp3",global.jakidzwiek)
	SXMS_SFX_Load(164,global.dzwieksciezka+"boom_boom_swing.mp3",global.jakidzwiek)
	SXMS_SFX_Load(165,global.dzwieksciezka+"super_key.mp3",global.jakidzwiek)


	SXMS_SFX_Load(166,global.dzwieksciezka+"map_enemy_walk.mp3",global.jakidzwiek)


	SXMS_SFX_Load(200,global.dzwieksciezka+"door.mp3",global.jakidzwiek)
	SXMS_SFX_Load(201,global.dzwieksciezka+"door2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(202,global.dzwieksciezka+"level_boos_complete.mp3",global.jakidzwiek)

	SXMS_SFX_Load(203,global.dzwieksciezka+"boss_died.mp3",global.jakidzwiek)
	SXMS_SFX_Load(204,global.dzwieksciezka+"boss_oberw.mp3",global.jakidzwiek)

	SXMS_SFX_Load(205,global.dzwieksciezka+"chest_spawn.mp3",global.jakidzwiek)
	SXMS_SFX_Load(206,global.dzwieksciezka+"item_sproud.mp3",global.jakidzwiek)


	SXMS_SFX_Load(207,global.dzwieksciezka+"ballon.mp3",global.jakidzwiek)
	SXMS_SFX_Load(208,global.dzwieksciezka+"krzak_grown.mp3",global.jakidzwiek)



	SXMS_SFX_Load(300,global.dzwieksciezka+"happy_star_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(301,global.dzwieksciezka+"happy_star_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(302,global.dzwieksciezka+"happy_star_3.mp3",global.jakidzwiek)

	SXMS_SFX_Load(303,global.dzwieksciezka+"mario_speech_6.WAV",global.jakidzwiek)
	SXMS_SFX_Load(304,global.dzwieksciezka+"mario_speech_16.wav",global.jakidzwiek)
	SXMS_SFX_Load(305,global.dzwieksciezka+"bouncing.mp3",global.jakidzwiek)
	SXMS_SFX_Load(306,global.dzwieksciezka+"cannon_operate_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(307,global.dzwieksciezka+"cannon_operate_2.mp3",global.jakidzwiek)

	SXMS_SFX_Load(308,global.dzwieksciezka+"m_whoohoo_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(309,global.dzwieksciezka+"m_whoohoo_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(310,global.dzwieksciezka+"m_whoohoo_3.mp3",global.jakidzwiek)

	SXMS_SFX_Load(311,global.dzwieksciezka+"step_oil_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(312,global.dzwieksciezka+"step_oil_2.mp3",global.jakidzwiek)

	SXMS_SFX_Load(313,global.dzwieksciezka+"massagebox_ok.mp3",global.jakidzwiek)
	SXMS_SFX_Load(314,global.dzwieksciezka+"massagebox_no.mp3",global.jakidzwiek)


	SXMS_SFX_Load(315,global.dzwieksciezka+"ghost_poof_1.mp3",global.jakidzwiek)
	SXMS_SFX_Load(316,global.dzwieksciezka+"ghost_poof_2.mp3",global.jakidzwiek)
	SXMS_SFX_Load(317,global.dzwieksciezka+"lakitu_laught.mp3",global.jakidzwiek)

	SXMS_SFX_Load(318,global.dzwieksciezka+"machinery.mp3",global.jakidzwiek)


	SXMS_SFX_Load(319,global.dzwieksciezka+"loop_surroung_lava.mp3",global.jakidzwiek)

	SXMS_SFX_Load(320,global.dzwieksciezka+"loop_tanks_engine.mp3",global.jakidzwiek)

	SXMS_SFX_Load(321,global.dzwieksciezka+"loop_waterfall.mp3",global.jakidzwiek)


	SXMS_SFX_Load(322,global.dzwieksciezka+"bowser_die.mp3",global.jakidzwiek)

	SXMS_SFX_Load(323,global.dzwieksciezka+"super_win_bowser.mp3",global.jakidzwiek)


	SXMS_SFX_Load(324,global.dzwieksciezka+"cant_select_no.mp3",global.jakidzwiek)


	SXMS_SFX_Load(325,global.dzwieksciezka+"DISCOVER_SECRET.mp3",global.jakidzwiek)
	SXMS_SFX_Load(326,global.dzwieksciezka+"DISCOVER_COLLECTED_SECRET.mp3",global.jakidzwiek)

	SXMS_SFX_Load(327,global.dzwieksciezka+"letter_from_peach.ogg",global.jakidzwiek)


	SXMS_SFX_Load(400,global.dzwieksciezka+"wiadomosc_1.ogg",global.jakidzwiek)
	SXMS_SFX_Load(401,global.dzwieksciezka+"wiadomosc_2.ogg",global.jakidzwiek)
	SXMS_SFX_Load(402,global.dzwieksciezka+"wiadomosc_1eng.ogg",global.jakidzwiek)
	SXMS_SFX_Load(403,global.dzwieksciezka+"wiadomosc_2eng.ogg",global.jakidzwiek)


	SXMS_SFX_Load(404,global.dzwieksciezka+"super_explosion.ogg",global.jakidzwiek)

	SXMS_SFX_Load(405,global.dzwieksciezka+"eater_1.ogg",global.jakidzwiek)
	SXMS_SFX_Load(406,global.dzwieksciezka+"eater_2.ogg",global.jakidzwiek)

	SXMS_SFX_Load(407,global.dzwieksciezka+"wlaczenie_gry.ogg",global.jakidzwiek)
	SXMS_SFX_Load(408,global.dzwieksciezka+"click.ogg",global.jakidzwiek)
	SXMS_SFX_Load(409,global.dzwieksciezka+"click2.ogg",global.jakidzwiek)
	SXMS_SFX_Load(410,global.dzwieksciezka+"wlaczenie-gry.ogg",global.jakidzwiek)


	SXMS_SFX_Load(411,global.dzwieksciezka+"aaa_cartoon_1.ogg",global.jakidzwiek)
	SXMS_SFX_Load(412,global.dzwieksciezka+"aaa_cartoon_2.ogg",global.jakidzwiek)

	SXMS_SFX_Load(500,global.dzwieksciezka+"0000_anim_1.ogg",global.jakidzwiek)
	SXMS_SFX_Load(501,global.dzwieksciezka+"0000_anim_2.ogg",global.jakidzwiek)


	SXMS_SFX_Load(502,global.dzwieksciezka+"0000_guide_1.ogg",global.jakidzwiek)
	SXMS_SFX_Load(503,global.dzwieksciezka+"0000_guide_2.ogg",global.jakidzwiek)





	SXMS_SFX_Load(100,global.dzwieksciezka+"enemy_chomp_1.wav",global.jakidzwiek)








}
