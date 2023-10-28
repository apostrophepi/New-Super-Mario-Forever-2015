if !keyboard_check_pressed(vk_escape) {
    ilosc_przeciwnikow=0
    if global.choosed_save=0 {global.hex_save_pos=0}
    if global.choosed_save=1 {global.hex_save_pos=20000}
    if global.choosed_save=2 {global.hex_save_pos=40000}
    
    // nagraj zmienne przeciwnikow
    zapis=hex_open("./data/gfx/beetlee.jpg")
    if instance_number(o_map_atakujacy_przeciwnik)>0
        {
        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id_get( i )
            if iii.object_index=o_map_atakujacy_przeciwnik
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
            hex_write(zapis,0+global.hex_save_pos+global.map_number*1000,ilosc_przeciwnikow)
            }
        }
    hex_close(zapis)
    
    // nagraj pozostale zmienne - pozycja gracza i jego bonusy, itemy itp
    
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    

    hex_write(zapis2,global.hex_save_pos+1000+0,global.punkty)
    hex_write(zapis2,global.hex_save_pos+1000+1,global.zycia)
    hex_write(zapis2,global.hex_save_pos+1000+2,global.coins)
    hex_write(zapis2,global.hex_save_pos+1000+3,global.coins_red)
    hex_write(zapis2,global.hex_save_pos+1000+4,global.magic_stars)
    hex_write(zapis2,global.hex_save_pos+1000+5,global.map_uzyto_budzika)
    hex_write(zapis2,global.hex_save_pos+1000+6,global.map_uzyto_gwiazdki)
    hex_write(zapis2,global.hex_save_pos+1000+7,global.map_item_grzyby)
    hex_write(zapis2,global.hex_save_pos+1000+8,global.map_item_kwiatki)
    hex_write(zapis2,global.hex_save_pos+1000+9,global.map_item_listek)
    hex_write(zapis2,global.hex_save_pos+1000+10,global.map_item_burak)
    hex_write(zapis2,global.hex_save_pos+1000+11,global.map_item_boomer)
    hex_write(zapis2,global.hex_save_pos+1000+12,global.map_item_hammer)
    hex_write(zapis2,global.hex_save_pos+1000+13,global.map_item_duch)
    hex_write(zapis2,global.hex_save_pos+1000+14,global.map_item_bomber)
    hex_write(zapis2,global.hex_save_pos+1000+15,global.map_item_tanoki)
    hex_write(zapis2,global.hex_save_pos+1000+16,global.map_item_latacz)
    hex_write(zapis2,global.hex_save_pos+1000+17,global.map_item_gwiazdka)
    hex_write(zapis2,global.hex_save_pos+1000+18,global.map_item_budzik)
    hex_write(zapis2,global.hex_save_pos+1000+19,global.happy_stars)
    hex_write(zapis2,global.hex_save_pos+1000+20,global.unknown_key_2)
    hex_write(zapis2,global.hex_save_pos+1000+21,global.unknown_key_3)
    hex_write(zapis2,global.hex_save_pos+1000+22,global.unknown_key_4)
    hex_write(zapis2,global.hex_save_pos+1000+23,global.unknown_key_5)
    hex_write(zapis2,global.hex_save_pos+1000+24,global.unknown_key_6)
    hex_write(zapis2,global.hex_save_pos+1000+25,global.happy_stars)
    
    
    
    
    hex_write(zapis2,global.hex_save_pos+1000+41,global.map_completed[0])
    hex_write(zapis2,global.hex_save_pos+1000+42,global.map_completed[1])
    hex_write(zapis2,global.hex_save_pos+1000+43,global.map_completed[2])
    hex_write(zapis2,global.hex_save_pos+1000+44,global.map_completed[3])
    hex_write(zapis2,global.hex_save_pos+1000+45,global.map_completed[4])
    hex_write(zapis2,global.hex_save_pos+1000+46,global.map_completed[5])
    hex_write(zapis2,global.hex_save_pos+1000+47,global.map_completed[6])
    hex_write(zapis2,global.hex_save_pos+1000+48,global.map_completed[7])
    
    
    hex_write(zapis2,global.hex_save_pos+40+global.map_number,o_map_player_1.x)
    hex_write(zapis2,global.hex_save_pos+60+global.map_number,o_map_player_1.y)
    
    
    hex_write(zapis2,global.hex_save_pos+1000+27,o_map_player_1.idzie)
    hex_write(zapis2,global.hex_save_pos+1000+28,o_map_player_1.speeder)
    hex_write(zapis2,global.hex_save_pos+1000+29,o_map_player_1.dotykal)
    hex_write(zapis2,global.hex_save_pos+1000+30,o_map_player_1.size2)
    hex_write(zapis2,global.hex_save_pos+1000+31,o_map_player_1.animacja)
    hex_write(zapis2,global.hex_save_pos+1000+32+global.map_number,o_map_player_1.lastmove)
    
    

    hex_close(zapis2)
    
    
    
    // nagraj etapy
    ilosc_etapow=0
     zapis3=hex_open("./data/gfx/beetlee_m.jpg")
    if instance_number(o_map_atakujacy_przeciwnik)>0
        {
        for (i=0;i<instance_count;i+=1)
            {
            iii=instance_id_get( i )
            if iii.object_index=o_button_map_1
                {
                hex_write(zapis3,1+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.id)
                hex_write(zapis3,2+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.completed)
                hex_write(zapis3,3+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.posiada_brame)
                hex_write(zapis3,4+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.grafika_bramy)
                hex_write(zapis3,5+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.kierunek_bramy)
                hex_write(zapis3,6+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.generuj_statek)
                hex_write(zapis3,7+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.generuj_dialog)
                hex_write(zapis3,8+global.hex_save_pos+ilosc_etapow*10+global.map_number*1000,iii.ukryta_droga)
                
                
                ilosc_etapow+=1};
            hex_write(zapis3,0+global.hex_save_pos+global.map_number*1000,ilosc_etapow)
            }
        }
    hex_close(zapis3)
    
    
    
    }
    

