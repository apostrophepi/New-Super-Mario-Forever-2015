if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5
    {
    if x>400 && x<room_width-400 {timer+=1
    if timer>szybkosc_generowania
        {
        timer=-random(szybkosc_random)
        koko=instance_create(x+random(zasieg_tworzenia)-random(zasieg_tworzenia),y,o_enemy_small_fish_skoczek)
        koko.iyor=-wysokosc_wyskoku-random(wysokosc_wyskoku_random)
        koko.ixor=ixor+random(ixor_random)
        koko.kierunek=kierunek
        }
        
    if pozycja_za_mario=1 {x=obj_mario.x}}
    }

