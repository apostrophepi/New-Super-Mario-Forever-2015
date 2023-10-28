function hex_create_empty(argument0) {
	/*Tworzy pusty plik z miejscem na X wartosci
	hex_create_empty(filename,vars)
	filename - sciezka do pliku
	vars - na ile wartosci ma byc przygotowane miejsce

	zwraca 0 jezeli dany plik juz istnieje, 1 jezeli udalo sie stworzyc
	*/

	if file_exists(argument0){return 0;}
	var stre;
	stre=file_bin_open(argument0,1)
	repeat(vars){
	    file_bin_write_byte(stre,floor(random(256)))
	    file_bin_write_byte(stre,floor(random(256)))
	    file_bin_write_byte(stre,floor(random(256)))
	    file_bin_write_byte(stre,floor(random(256)))
	}
	file_bin_close(stre)



}
