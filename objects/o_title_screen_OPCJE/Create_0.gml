


// WGRAJ OPCJE

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


zniknij=0

linked=0

tick=0


mf_old=0
mf_old_alpha=0


przyspieszone_opcje=0


kaczypcio=0
kaczypciorx=0


delayer=0


run_game=0


start_game=0


alpha_opcji_tlowych=0
efekcior_tlowy_opcji=500

zmienia_przycisk_sterowania=0
zmienia_przycisk_sterowania2=0
zmienia_przycisk_sterowania3=0
zmienia_przycisk_sterowania4=0
zmienia_przycisk_sterowania5=0
zmienia_przycisk_sterowania6=0
zmienia_przycisk_sterowania7=0
zmienia_przycisk_tekst=""



ustaw_jezyk_klawiszy=0

kuku=0

nagraj_rozdzielczosc_x=display_get_width()
nagraj_rozdzielczosc_y=display_get_height()



graphical_tick=1


zmienianie_dodatkowych_opcji=0
przesowanko_dodatkowych_opcji=0
przesowanko_docelowe=0
przesowanko_rozdzialka=0




dod_opcji1=0
dod_opcji_promien1=0
dod_opcji2=0
dod_opcji_promien2=0
dod_opcji3=0
dod_opcji_promien3=0
dod_opcji4=0
dod_opcji_promien4=0
dod_opcji5=0
dod_opcji_promien5=0
dod_opcji6=0
dod_opcji_promien6=0
dod_opcji7=0
dod_opcji_promien7=0
dod_opcji8=0
dod_opcji_promien8=0
dod_opcji9=0
dod_opcji_promien9=0
dod_opcji10=0
dod_opcji_promien10=0
dod_opcji11=0
dod_opcji_promien11=0
dod_opcji12=0
dod_opcji_promien12=0
dod_opcji13=0
dod_opcji_promien13=0






start_gamer=0
zmien_opcje=0

dodawacz1=0
dodawacz_promien1=0

dodawacz2=0
dodawacz_promien2=0

dodawacz3=0
dodawacz_promien3=0

dodawacz4=0
dodawacz_promien4=0

dodawacz5=0
dodawacz_promien5=0


stream=0


sekwencja=0
timer=0
anim=0
anim2=0
anim3=0
anim4=0

opcja=0
klik=0
klik2=0


efekt=0
efekt1=0
efekt2=0
efekt3=0
efekt4=0


opcjar=0


wybor_opcji=0

    if global.english_or_polish=0 {
    opcja[0]="START GAME"
    opcja[1]="OPTIONS"
    opcja[2]="EDIT LEVELS"
    opcja[3]="CLASSIC MARIO FOREVER"
    opcja[4]="QUIT"
    }
    
    if global.english_or_polish=1 {
    opcja[0]="START"
    opcja[1]="OPCJE GRY"
    opcja[2]="EDYTOR ETAPÓW"
    opcja[3]="KLASYCZNE MARIO FOREVER"
    opcja[4]="WYJŚCIE"}



// TLUMACZENIE DODATKOWYCH OPCJI
    if global.english_or_polish=0 {
    if global.windowed=0 {text_windowed="WINDOW"}
    if global.windowed=1 {text_windowed="WIDE"}
    if global.windowed=2 {text_windowed="LARGER WINDOW"}
    if global.windowed=3 {text_windowed="FULL SCREEN"}


    text_rozdzialka[0]="GAME IS RESIZABLE BY MOUSE"
    text_rozdzialka[1]="1024x768"
    text_rozdzialka[2]="1280x720"
    text_rozdzialka[4]="1280x800"
    text_rozdzialka[5]="1280x960"
    text_rozdzialka[6]="1280x1024"
    text_rozdzialka[7]="1600x900"
    text_rozdzialka[8]="1680x1050"
    text_rozdzialka[9]="1776x1000"
    text_rozdzialka[10]="1920x1080"
    
    
        
    tekst_dodatkowych_opcji[0]="GRAPHICS OPTIONS:"
    tekst_dodatkowych_opcji[1]="SCREEN MODE"
    tekst_dodatkowych_opcji[2]=""
    tekst_dodatkowych_opcji[3]="WINDOW BORDER"
    tekst_dodatkowych_opcji[4]="SOUND OPTIONS:"
    tekst_dodatkowych_opcji[5]="MUSIC VOLUME"
    tekst_dodatkowych_opcji[6]="SOUND VOLUME"
    tekst_dodatkowych_opcji[7]="CONTROL OPTIONS:"
    tekst_dodatkowych_opcji[8]="MOVING UP"
    tekst_dodatkowych_opcji[9]="MOVING DOWN"
    tekst_dodatkowych_opcji[10]="MOVING LEFT"
    tekst_dodatkowych_opcji[11]="MOVING RIGHT"
    tekst_dodatkowych_opcji[12]="JUMPING"
    tekst_dodatkowych_opcji[13]="FIRING"
    tekst_dodatkowych_opcji[14]="JOYPAD OPTIONS:"
    tekst_dodatkowych_opcji[15]="JOYPAD ON"
    tekst_dodatkowych_opcji[16]="EXIT OPTIONS"
    zmienia_przycisk_tekst="PRESS ANY KEY!"
    }
    if global.english_or_polish=1 {
    
    if global.windowed=0 {text_windowed="OKIENKO"}
    if global.windowed=1 {text_windowed="ROZCIĄGNIĘTY"}
    if global.windowed=2 {text_windowed="POWIĘKSZONE OKNO"}
    
    text_rozdzialka[0]="MOZNA ZMIENIC ROZMIAR OKNA MYSZKĄ"
    text_rozdzialka[1]="1024x768"
    text_rozdzialka[2]="1280x720"
    text_rozdzialka[4]="1280x800"
    text_rozdzialka[5]="1280x960"
    text_rozdzialka[6]="1280x1024"
    text_rozdzialka[7]="1600x900"
    text_rozdzialka[8]="1680x1050"
    text_rozdzialka[9]="1776x1000"
    text_rozdzialka[10]="1920x1080"
        
    tekst_dodatkowych_opcji[0]="OPCJE WYŚWIETLANIA:"
    tekst_dodatkowych_opcji[1]="TRYB OKIENKA"
    tekst_dodatkowych_opcji[2]=""
    tekst_dodatkowych_opcji[3]="RAMKA OKNA"
    tekst_dodatkowych_opcji[4]="OPCJE DŹWIĘKOWE:"
    tekst_dodatkowych_opcji[5]="GŁOŚNOŚĆ MUZYKI"
    tekst_dodatkowych_opcji[6]="GŁOŚNOŚĆ EFEKTÓW"
    tekst_dodatkowych_opcji[7]="OPCJE STEROWANIA:"
    tekst_dodatkowych_opcji[8]="IDŹ DO GÓRY"
    tekst_dodatkowych_opcji[9]="IDŹ NA DÓŁ"
    tekst_dodatkowych_opcji[10]="IDŹ W LEWO"
    tekst_dodatkowych_opcji[11]="IDŹ W PRAWO"
    tekst_dodatkowych_opcji[12]="SKAKANIE"
    tekst_dodatkowych_opcji[13]="STRZELANIE"
    tekst_dodatkowych_opcji[14]="OPCJE JOPADA:"
    tekst_dodatkowych_opcji[15]="MOŻNA GRAĆ NA JOPADZIE"
    tekst_dodatkowych_opcji[16]="WYJŚCIE Z OPCJI"
    zmienia_przycisk_tekst="WCIŚNIJ KLAWISZ KTÓRY CHCESZ USTAWIĆ!"
    }





// USTAW JEZYK KLAWISZY

if ustaw_jezyk_klawiszy=0 && global.english_or_polish=0
    {
    ustaw_jezyk_klawiszy=1
    
    global.znak[92]=" RIGHT WINDOWS"
global.znak[20]=" CAPS LOCK"
global.znak[345]="SCROLLLOCK"
global.znak[32]="SPACE"
global.znak[192]="TILDE"
global.znak[48]="DIGIT0"
global.znak[49]="DIGIT 1"
global.znak[50]=" DIGIT 2"
global.znak[51]=" DIGIT 3"
global.znak[52]=" DIGIT 4"
global.znak[53]=" DIGIT 5"
global.znak[54]=" DIGIT 6"
global.znak[55]=" DIGIT 7"
global.znak[56]=" DIGIT 8"
global.znak[57]=" DIGIT 9"
global.znak[189]=" MINUS"
global.znak[187]=" EQUAL"
global.znak[8]=" BACKSPACE"
global.znak[81]=" Q"
global.znak[87]=" W"
global.znak[69]=" E"
global.znak[82]=" R"
global.znak[84]=" T"
global.znak[89]=" Y"
global.znak[85]=" U"
global.znak[73]=" I"
global.znak[79]=" O"
global.znak[80]=" P"
global.znak[186]=" :"
global.znak[219]=" LEFT SQUARE BRACKET"
global.znak[221]=" RIGHT SQUARE BRACKET"
global.znak[65]=" A"
global.znak[83]=" S"
global.znak[68]=" D"
global.znak[70]=" F"
global.znak[71]=" G"
global.znak[72]=" H"
global.znak[74]=" J"
global.znak[75]=" K"
global.znak[76]=" L"
global.znak[168]=" :"
global.znak[222]=" \""
global.znak[13]=" ENTER"
global.znak[16]=" SHIFT"
global.znak[90]=" Z"
global.znak[88]=" X"
global.znak[67]=" C"
global.znak[86]=" V"
global.znak[66]=" B"
global.znak[78]=" N"
global.znak[77]=" M"
global.znak[188]=" LEFT BRACKET"
global.znak[190]=" RIGHT BRACKET"
global.znak[191]=" SLASH"
global.znak[220]=" BACKSLASH"
global.znak[17]=" CONTROL"
global.znak[91]=" LEFT WINDOW KEY"
global.znak[18]=" ALT"
global.znak[93]=" START"
global.znak[19]=" BREAK"
global.znak[45]=" INSERT"
global.znak[36]=" HOME"
global.znak[33]=" PAGE DOWN"
global.znak[46]=" DELETE"
global.znak[35]=" END"
global.znak[145]=" SCROOL LOCK"
global.znak[34]=" PAGE DOWN"
global.znak[37]=" ARROW-LEFT"
global.znak[38]=" ARROW-UP"
global.znak[40]=" ARROW-DOWN"
global.znak[39]=" ARROW-RIGHT"
global.znak[144]=" NUM LOCK"
global.znak[111]=" NUM SLASH"
global.znak[106]=" STAR"
global.znak[109]=" MINUS"
global.znak[103]=" NUM 7"
global.znak[104]=" NUM 8"
global.znak[105]=" NUM 9"
global.znak[100]=" NUM 4"
global.znak[101]=" NUM 5"
global.znak[102]=" NUM 6"
global.znak[12]=" CENTER"
global.znak[96]=": NUM 0"

global.znak[95]=": NUM POINT"


global.znak[97]=": NUM 1"
global.znak[98]=": NUM 2"
global.znak[99]=": NUM 3"
global.znak[107]=": PLUS"
global.znak[112]=": F1"
global.znak[113]=": F2"
global.znak[114]=": F3"
global.znak[115]=": F4"
global.znak[116]=": F5"
global.znak[117]=": F6"
global.znak[118]=": F7"
global.znak[119]=": F8"
global.znak[120]=": F9"
global.znak[121]=": F10"
global.znak[122]=": F11"



global.znak[123]=": F12"

global.znak[1000]=": PRESS ANY KEY"
global.znak[1001]=": JOYPAD BUTTON 1"
global.znak[1002]=": JOYPAD BUTTON 2"
global.znak[1003]=": JOYPAD BUTTON 3"
global.znak[1004]=": JOYPAD BUTTON 4"
global.znak[1005]=": JOYPAD BUTTON 5"
global.znak[1006]=": JOYPAD BUTTON 6"
global.znak[1007]=": JOYPAD BUTTON 7"
global.znak[1008]=": JOYPAD BUTTON 8"
global.znak[1009]=": JOYPAD BUTTON 9"
global.znak[1010]=": JOYPAD BUTTON 10"
global.znak[1011]=": JOYPAD BUTTON 11"
global.znak[1012]=": JOYPAD BUTTON 12"
global.znak[1013]=": JOYPAD BUTTON 13"
global.znak[1014]=": JOYPAD BUTTON 14"
global.znak[1015]=": JOYPAD BUTTON 15"
global.znak[1016]=": JOYPAD BUTTON 16"
global.znak[1017]=": JOYPAD BUTTON 17"
global.znak[1018]=": JOYPAD BUTTON 18"
global.znak[1019]=": JOYPAD BUTTON 19"
global.znak[1020]=": JOYPAD BUTTON 20"
global.znak[1021]=": JOYPAD BUTTON 21"
global.znak[1022]=": JOYPAD BUTTON 22"
global.znak[1023]=": JOYPAD BUTTON 23"
global.znak[1024]=": JOYPAD BUTTON 24"
global.znak[1023]=": JOYPAD BUTTON 25"
global.znak[1024]=": JOYPAD BUTTON 26"
global.znak[1025]=": JOYPAD BUTTON 27"
global.znak[1026]=": JOYPAD BUTTON 28"
global.znak[1027]=": JOYPAD BUTTON 29"
global.znak[1028]=": JOYPAD BUTTON 30"
global.znak[1029]=": JOYPAD BUTTON 31"
global.znak[1030]=": JOYPAD BUTTON 32"

global.znak[2000]=": PRESS ANY KEY"
global.znak[2001]=": PRESS JOY BUTTON"
    
    
    
    }



    
    
    
    
if ustaw_jezyk_klawiszy=0 && global.english_or_polish=1
    {
    
    ustaw_jezyk_klawiszy=1
    
global.znak[92]=" PRAWY WINDOWS"
global.znak[20]=" CAPS LOCK"
global.znak[345]="SCROLLLOCK"
global.znak[32]="SPACJA"
global.znak[192]="TYLDA"
global.znak[48]="CYFERKOWY 0"
global.znak[49]="CYFERKOWY 1"
global.znak[50]=" CYFERKOWY 2"
global.znak[51]=" CYFERKOWY 3"
global.znak[52]=" CYFERKOWY 4"
global.znak[53]=" CYFERKOWY 5"
global.znak[54]=" CYFERKOWY 6"
global.znak[55]=" CYFERKOWY 7"
global.znak[56]=" CYFERKOWY 8"
global.znak[57]=" CYFERKOWY 9"
global.znak[189]=" MINUS"
global.znak[187]=" RÓWNA SIĘ"
global.znak[8]=" BACKSPACE"
global.znak[81]=" Q"
global.znak[87]=" W"
global.znak[69]=" E"
global.znak[82]=" R"
global.znak[84]=" T"
global.znak[89]=" Y"
global.znak[85]=" U"
global.znak[73]=" I"
global.znak[79]=" O"
global.znak[80]=" P"
global.znak[186]=" :"
global.znak[219]=" LEWT SQUARE BRACKET"
global.znak[221]=" PRAWY SQUARE BRACKET"
global.znak[65]=" A"
global.znak[83]=" S"
global.znak[68]=" D"
global.znak[70]=" F"
global.znak[71]=" G"
global.znak[72]=" H"
global.znak[74]=" J"
global.znak[75]=" K"
global.znak[76]=" L"
global.znak[168]=" :"
global.znak[222]=" \""
global.znak[13]=" ENTER"
global.znak[16]=" SHIFT"
global.znak[90]=" Z"
global.znak[88]=" X"
global.znak[67]=" C"
global.znak[86]=" V"
global.znak[66]=" B"
global.znak[78]=" N"
global.znak[77]=" M"
global.znak[188]=" LEWY BRACKET"
global.znak[190]=" PRAWY BRACKET"
global.znak[191]=" SLASH"
global.znak[220]=" BACKSLASH"
global.znak[17]=" CONTROL"
global.znak[91]=" LEFT WINDOW KEY"
global.znak[18]=" ALT"
global.znak[93]=" START"
global.znak[19]=" BREAK"
global.znak[45]=" INSERT"
global.znak[36]=" HOME"
global.znak[33]=" PAGE DOWN"
global.znak[46]=" DELETE"
global.znak[35]=" END"
global.znak[145]=" SCROOL LOCK"
global.znak[34]=" PAGE DOWN"
global.znak[37]=" STRZAŁKA W LEWO"
global.znak[38]=" STRZAŁKA DO GÓRY"
global.znak[40]=" STRZAŁKA NA DÓŁ"
global.znak[39]=" STRZAŁKA W PRAWO"
global.znak[144]=" NUM LOCK"
global.znak[111]=" NUM SLASH"
global.znak[106]=" STAR"
global.znak[109]=" MINUS"
global.znak[103]=" NUM 7"
global.znak[104]=" NUM 8"
global.znak[105]=" NUM 9"
global.znak[100]=" NUM 4"
global.znak[101]=" NUM 5"
global.znak[102]=" NUM 6"
global.znak[12]=" CENTER"
global.znak[96]=": NUM 0"

global.znak[95]=": NUM POINT"


global.znak[97]=": NUM 1"
global.znak[98]=": NUM 2"
global.znak[99]=": NUM 3"
global.znak[107]=": PLUS"
global.znak[112]=": F1"
global.znak[113]=": F2"
global.znak[114]=": F3"
global.znak[115]=": F4"
global.znak[116]=": F5"
global.znak[117]=": F6"
global.znak[118]=": F7"
global.znak[119]=": F8"
global.znak[120]=": F9"
global.znak[121]=": F10"
global.znak[122]=": F11"



global.znak[123]=": F12"

global.znak[1000]=": PRESS ANY KEY"
global.znak[1001]=": JOYPAD BUTTON 1"
global.znak[1002]=": JOYPAD BUTTON 2"
global.znak[1003]=": JOYPAD BUTTON 3"
global.znak[1004]=": JOYPAD BUTTON 4"
global.znak[1005]=": JOYPAD BUTTON 5"
global.znak[1006]=": JOYPAD BUTTON 6"
global.znak[1007]=": JOYPAD BUTTON 7"
global.znak[1008]=": JOYPAD BUTTON 8"
global.znak[1009]=": JOYPAD BUTTON 9"
global.znak[1010]=": JOYPAD BUTTON 10"
global.znak[1011]=": JOYPAD BUTTON 11"
global.znak[1012]=": JOYPAD BUTTON 12"
global.znak[1013]=": JOYPAD BUTTON 13"
global.znak[1014]=": JOYPAD BUTTON 14"
global.znak[1015]=": JOYPAD BUTTON 15"
global.znak[1016]=": JOYPAD BUTTON 16"
global.znak[1017]=": JOYPAD BUTTON 17"
global.znak[1018]=": JOYPAD BUTTON 18"
global.znak[1019]=": JOYPAD BUTTON 19"
global.znak[1020]=": JOYPAD BUTTON 20"
global.znak[1021]=": JOYPAD BUTTON 21"
global.znak[1022]=": JOYPAD BUTTON 22"
global.znak[1023]=": JOYPAD BUTTON 23"
global.znak[1024]=": JOYPAD BUTTON 24"
global.znak[1023]=": JOYPAD BUTTON 25"
global.znak[1024]=": JOYPAD BUTTON 26"
global.znak[1025]=": JOYPAD BUTTON 27"
global.znak[1026]=": JOYPAD BUTTON 28"
global.znak[1027]=": JOYPAD BUTTON 29"
global.znak[1028]=": JOYPAD BUTTON 30"
global.znak[1029]=": JOYPAD BUTTON 31"
global.znak[1030]=": JOYPAD BUTTON 32"

global.znak[2000]=": PRESS ANY KEY"
global.znak[2001]=": PRESS JOY BUTTON"
    
    
    
    }

