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
