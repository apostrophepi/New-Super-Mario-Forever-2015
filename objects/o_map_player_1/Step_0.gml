// OTWIERANIE NOWEJ SCIEZKI NA MAPIE


if global.game_over=2000
    {
    if global.map_key_level_id.ukryta_droga<>1 {global.game_over=0}}
    
    
if global.game_over=2000
    {
    
    if global.map_key_level_id.ukryta_droga=1 {
    gate_opened_x=(global.map_key_level_id.x-o_map_player_1.x)/gate_dzielnik
    gate_opened_y=(global.map_key_level_id.y-o_map_player_1.y+global.map_key_level_id.brama_y)/gate_dzielnik
    if gate_dzielnik>1 {gate_dzielnik=gate_dzielnik/1.2}
    if gate_dzielnik<1 {global.game_over=2005 ;gate_dzielnik=1;global.map_key_level_id.ukryta_droga=2 }
    }}
    
    
    
if global.game_over=2006
    {
    if instance_exists(o_tworz_ukryta_droge)
        {
        if o_tworz_ukryta_droge.odleglosc_x<0 {open_road_x-=1}
        if o_tworz_ukryta_droge.odleglosc_x>0 {open_road_x+=1}
        if o_tworz_ukryta_droge.odleglosc_y<0 {open_road_y-=1}
        if o_tworz_ukryta_droge.odleglosc_y>0 {open_road_y+=1}
        //open_road_x=o_tworz_ukryta_droge.odleglosc_x*20;
        //open_road_y=o_tworz_ukryta_droge.odleglosc_y*20
        }
        
        
    if !instance_exists(o_tworz_ukryta_droge) {global.game_over=2010}
    repeat(3){
    
    }
    }
if global.game_over=2005 {global.game_over=2006}

if global.game_over=2010
    {
    gate_opened_x=(global.map_key_level_id.x-o_map_player_1.x)/gate_dzielnik
    gate_opened_y=(global.map_key_level_id.y-o_map_player_1.y+global.map_key_level_id.brama_y)/gate_dzielnik
    if gate_dzielnik<99 {gate_dzielnik+=1+gate_dzielnik/1000;open_road_x=open_road_x/1.1;open_road_y=open_road_y/1.1}
    if gate_dzielnik>=50 {global.game_over=0}
    }

    
    
    

// ZDOBYWANIE KLUCZY
/*
if global.map_key_level_collected=1
    {
    global.map_key_level_collected=0
    global.map_key_level_id.posiada_brame=2
    }*/
    
    
    
    
    // OTWIERANIE BRAMY LUB GDY JUZ OTWARTA WRACANIE DO PUNKTU ZWROTNEGO
if global.game_over=1000
    {
    if global.map_key_level_id.posiada_brame<>1 {global.game_over=0}}
    
if global.game_over=1000
    {
    if global.map_key_level_id.posiada_brame=1 {
    global.mario_ktory_pokonal.key=0
    gate_opened_x=(global.map_key_level_id.x-o_map_player_1.x)/gate_dzielnik
    gate_opened_y=(global.map_key_level_id.y-o_map_player_1.y+global.map_key_level_id.brama_y)/gate_dzielnik
    if gate_dzielnik>1 {gate_dzielnik=gate_dzielnik/1.2}
    if gate_dzielnik<1 {gate_dzielnik=1;global.game_over=1001}
    }}
    
    
    
if global.game_over=1001
    {
    global.map_key_level_id.posiada_brame=2
    global.game_over=1002
    gate_gwiazdkuj_number=1
    SXMS_SFX_PlayExt(145,((x-view_xview[0])/800)*255,global.glosnosc_dzwieku,-1,0,0)
    repeat(3){
    part_system_depth(global.particle_map_sterring,depth+100) 
    part_particles_create(global.particle_map_sterring,random(30)-random(30)+global.map_key_level_id.x,random(30)-random(30)+global.map_key_level_id.y+global.map_key_level_id.brama_y,global.part_map_chmurker,3);
    part_system_depth(global.particle_map_przed_mario,depth-100) 
    part_particles_create(global.particle_map_przed_mario,random(30)-random(30)+global.map_key_level_id.x,random(30)-random(30)+global.map_key_level_id.y+global.map_key_level_id.brama_y,global.part_map_chmurker,1)
    }
    part_particles_create(global.particle_map_przed_mario,global.map_key_level_id.x,global.map_key_level_id.y+global.map_key_level_id.brama_y,global.part_effect_mapgate,1)
    }
if global.game_over=1002 && gate_gwiazdkuj_number>40
    {
    gate_opened_x=(global.map_key_level_id.x-o_map_player_1.x)/gate_dzielnik
    gate_opened_y=(global.map_key_level_id.y-o_map_player_1.y+global.map_key_level_id.brama_y)/gate_dzielnik
    if gate_dzielnik<99 {gate_dzielnik+=1+gate_dzielnik/1000}
    if gate_dzielnik>=50 {global.game_over=0}
    }
if global.game_over=0
    {
    if gate_dzielnik<99 {gate_dzielnik+=1+gate_dzielnik/1000;open_road_x=open_road_x/1.1;open_road_y=open_road_y/1.1}
    }


    
    if gate_gwiazdkuj_number>0 && gate_gwiazdkuj_number<60 {gate_gwiazdkuj+=1}
    if gate_gwiazdkuj>gate_gwiazdkuj_number/20 {gate_gwiazdkuj=0;gate_gwiazdkuj_number+=1;repeat(1){part_particles_create(global.particle_map_przed_mario,random(80)-random(80)+global.map_key_level_id.x,random(80)-random(80)+global.map_key_level_id.y+global.map_key_level_id.brama_y,global.part_effect_water_sparkle,1)}}
    
    
// WYGRAL LEVEL - PRZESZEDL LEVEL LUB PRZECIWNIKA
if global.map_wgraj_wartosci=1 {

SXMS_SFX_PlayExt(134+round(random(1)),(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
    global.map_wgraj_wartosci=0
    if global.choosed_save=0 {global.hex_save_pos=0}
    if global.choosed_save=1 {global.hex_save_pos=20000}
    if global.choosed_save=2 {global.hex_save_pos=40000}
    
    zapis=hex_open("./data/gfx/beetlee.jpg")
    ilosc_wgrania_przeciwnikow=hex_read(zapis,0+global.hex_save_pos+global.map_number*1000)
    if ilosc_wgrania_przeciwnikow>0
        {
        for (i=0;i<ilosc_wgrania_przeciwnikow;i+=1)
            {

            id_wgrania=hex_read(zapis,1+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.x=hex_read(zapis,2+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.y=hex_read(zapis,3+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.idzie=hex_read(zapis,4+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.last_x_point=hex_read(zapis,5+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.last_y_point=hex_read(zapis,6+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.dotykal=hex_read(zapis,7+global.hex_save_pos+i*10+global.map_number*1000)
            if id_wgrania<>global.id_of_killed_atacker {id_wgrania.killed=hex_read(zapis,8+global.hex_save_pos+i*10+global.map_number*1000)}
            if id_wgrania=global.id_of_killed_atacker && global.kill_atacker=1 {id_wgrania.killed=1}
            }
        hex_close(zapis)
        global.delayer=1
        }
        
        
    // WGRAJ ZMIENNE PLAYERA
    
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    
    iii=0
    global.punkty=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.zycia=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.coins=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.coins_red=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.magic_stars=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_uzyto_budzika=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_uzyto_gwiazdki=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_grzyby=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_kwiatki=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_listek=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_burak=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_boomer=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_hammer=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_duch=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_bomber=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_tanoki=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_latacz=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_gwiazdka=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_budzik=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.happy_stars=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_2=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_3=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_4=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_5=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_6=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    
    
    global.map_completed[0]=hex_read(zapis2,global.hex_save_pos+1000+41)
    global.map_completed[1]=hex_read(zapis2,global.hex_save_pos+1000+42)
    global.map_completed[2]=hex_read(zapis2,global.hex_save_pos+1000+43)
    global.map_completed[3]=hex_read(zapis2,global.hex_save_pos+1000+44)
    global.map_completed[4]=hex_read(zapis2,global.hex_save_pos+1000+45)
    global.map_completed[5]=hex_read(zapis2,global.hex_save_pos+1000+46)
    global.map_completed[6]=hex_read(zapis2,global.hex_save_pos+1000+47)
    global.map_completed[7]=hex_read(zapis2,global.hex_save_pos+1000+48)

    
    
    o_map_player_1.x=hex_read(zapis2,global.hex_save_pos+40+global.map_number);iii+=1
    o_map_player_1.y=hex_read(zapis2,global.hex_save_pos+60+global.map_number);iii+=1
    
    o_map_player_1.idzie=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.speeder=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.dotykal=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.size2=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    if o_map_player_1.size2>99999 {o_map_player_1.size2=-1}
    o_map_player_1.animacja=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.lastmove=hex_read(zapis2,global.hex_save_pos+1000+iii+global.map_number);iii+=1
    
    hex_close(zapis2)
        
        
        
        
        
        
        
        
        
        
        
        
        
    
    
    
    
    
    
    
    
    
    zapis3=hex_open("./data/gfx/beetlee_m.jpg")
    ilosc_wgrania_etapow=hex_read(zapis3,0+global.hex_save_pos+global.map_number*1000)
    if ilosc_wgrania_etapow>0
        {
        for (i=0;i<ilosc_wgrania_etapow;i+=1)
            {
            id_wgrania_etapu=hex_read(zapis3,1+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.completed=hex_read(zapis3,2+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.posiada_brame=hex_read(zapis3,3+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.grafika_bramy=hex_read(zapis3,4+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.kierunek_bramy=hex_read(zapis3,5+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.generuj_statek=hex_read(zapis3,6+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.generuj_dialog=hex_read(zapis3,7+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.ukryta_droga=hex_read(zapis3,8+global.hex_save_pos+i*10+global.map_number*1000)
            }
        hex_close(zapis3)
        global.delayer=1
        }
        
        
        
        
        }// DELAYER END
        

/* */
// WYGRAL LEVEL - PRZEGRANA
if global.map_wgraj_wartosci=2 {
    SXMS_SFX_PlayExt(19,(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)
    SXMS_SFX_PlayExt(136+round(random(1)),(x-view_xview[0])/(view_xview[0]+800),global.glosnosc_dzwieku,-1,0,0)

    global.map_wgraj_wartosci=0
    efekt_straty_zycia=60
    if global.choosed_save=0 {global.hex_save_pos=0}
    if global.choosed_save=1 {global.hex_save_pos=20000}
    if global.choosed_save=2 {global.hex_save_pos=40000}
    
    zapis=hex_open("./data/gfx/beetlee.jpg")
    ilosc_wgrania_przeciwnikow=hex_read(zapis,0+global.hex_save_pos+global.map_number*1000)
    if ilosc_wgrania_przeciwnikow>0
        {
        for (i=0;i<ilosc_wgrania_przeciwnikow;i+=1)
            {

            id_wgrania=hex_read(zapis,1+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.x=hex_read(zapis,2+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.y=hex_read(zapis,3+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.idzie=hex_read(zapis,4+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.last_x_point=hex_read(zapis,5+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania.last_y_point=hex_read(zapis,6+global.hex_save_pos+i*10+global.map_number*1000)
            
            
            if id_wgrania.idzie=1 {id_wgrania.idzie=3;id_wgrania.moze_isc_po_skuszeniu=1}
            if id_wgrania.idzie=2 {id_wgrania.idzie=4;id_wgrania.moze_isc_po_skuszeniu=1}
            if id_wgrania.idzie=3 {id_wgrania.idzie=1;id_wgrania.moze_isc_po_skuszeniu=1}
            if id_wgrania.idzie=4 {id_wgrania.idzie=2;id_wgrania.moze_isc_po_skuszeniu=1}
            
            //id_wgrania.x=id_wgrania.last_x_point
            //id_wgrania.y=id_wgrania.last_y_point
            
            id_wgrania.dotykal=hex_read(zapis,7+global.hex_save_pos+i*10)
            if id_wgrania<>global.id_of_killed_atacker {id_wgrania.killed=hex_read(zapis,8+global.hex_save_pos+i*10+global.map_number*1000)}
            if id_wgrania=global.id_of_killed_atacker && global.kill_atacker=1 {id_wgrania.killed=1}
            }
        hex_close(zapis)
        global.delayer=1
        }
        
        
    // WGRAJ ZMIENNE PLAYERA
    
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    
    iii=0
    global.punkty=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.zycia=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.coins=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.coins_red=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.magic_stars=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_uzyto_budzika=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_uzyto_gwiazdki=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_grzyby=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_kwiatki=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_listek=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_burak=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_boomer=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_hammer=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_duch=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_bomber=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_tanoki=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_latacz=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_gwiazdka=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.map_item_budzik=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.happy_stars=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_2=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_3=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_4=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_5=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    global.unknown_key_6=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    
    global.map_completed[0]=hex_read(zapis2,global.hex_save_pos+1000+41)
    global.map_completed[1]=hex_read(zapis2,global.hex_save_pos+1000+42)
    global.map_completed[2]=hex_read(zapis2,global.hex_save_pos+1000+43)
    global.map_completed[3]=hex_read(zapis2,global.hex_save_pos+1000+44)
    global.map_completed[4]=hex_read(zapis2,global.hex_save_pos+1000+45)
    global.map_completed[5]=hex_read(zapis2,global.hex_save_pos+1000+46)
    global.map_completed[6]=hex_read(zapis2,global.hex_save_pos+1000+47)
    global.map_completed[7]=hex_read(zapis2,global.hex_save_pos+1000+48)
    
    
    o_map_player_1.x=hex_read(zapis2,global.hex_save_pos+40+global.map_number);iii+=1
    o_map_player_1.y=hex_read(zapis2,global.hex_save_pos+60+global.map_number);iii+=1
    
    
    o_map_player_1.idzie=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.speeder=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.dotykal=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.size2=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    if o_map_player_1.size2>99999 {o_map_player_1.size2=-1}
    o_map_player_1.animacja=hex_read(zapis2,global.hex_save_pos+1000+iii);iii+=1
    o_map_player_1.lastmove=hex_read(zapis2,global.hex_save_pos+1000+iii+global.map_number);iii+=1
  
    
    hex_close(zapis2)
        
        
        
        
        
        
        
    zapis3=hex_open("./data/gfx/beetlee_m.jpg")
    ilosc_wgrania_etapow=hex_read(zapis3,0+global.hex_save_pos+global.map_number*1000)
    if ilosc_wgrania_etapow>0
        {
        for (i=0;i<ilosc_wgrania_etapow;i+=1)
            {
            id_wgrania_etapu=hex_read(zapis3,1+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.completed=hex_read(zapis3,2+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.posiada_brame=hex_read(zapis3,3+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.grafika_bramy=hex_read(zapis3,4+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.kierunek_bramy=hex_read(zapis3,5+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.generuj_statek=hex_read(zapis3,6+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.generuj_dialog=hex_read(zapis3,7+global.hex_save_pos+i*10+global.map_number*1000)
            id_wgrania_etapu.ukryta_droga=hex_read(zapis3,8+global.hex_save_pos+i*10+global.map_number*1000)
            }
        hex_close(zapis3)
        global.delayer=1
        }
        
       if place_meeting(x,y,o_button_map_1) && idzie=0
            {
            dodox=instance_place(x,y,o_button_map_1)
            if dodox.generuj_statek=1
                {
                if global.map_number=0 {
                dodox.generuj_statek=2
                (171718).x=o_map_player_1.x;
                (171718).y=o_map_player_1.y;
                dodox.completed=1}

                if global.map_number=1 {
                dodox.generuj_statek=2
                (171465).x=o_map_player_1.x;
                (171465).y=o_map_player_1.y;
                dodox.completed=1}

                if global.map_number=2 {
                dodox.generuj_statek=2
                (172050).x=o_map_player_1.x;
                (172050).y=o_map_player_1.y;
                dodox.completed=1}

                if global.map_number=3 {
                dodox.generuj_statek=2
                (172294).x=o_map_player_1.x;
                (172294).y=o_map_player_1.y;
                dodox.completed=1}

                if global.map_number=4 {
                dodox.generuj_statek=2
                (173042).x=o_map_player_1.x;
                (173042).y=o_map_player_1.y;
                dodox.completed=1}

                if global.map_number=5 {
                dodox.generuj_statek=2
                (172668).x=o_map_player_1.x;
                (172668).y=o_map_player_1.y;
                dodox.completed=1}

                if global.map_number=6 {
                dodox.generuj_statek=2
                (173417).x=o_map_player_1.x;
                (173417).y=o_map_player_1.y;
                dodox.completed=1}
                
                }
                
            }
        
        
        
        
        
        
        
        
        
        
        
        } // DELAYER END

/* */

/* */
if global.delayer=3 {global.delayer=312121}
if global.delayer=2 {global.delayer=3}
if global.delayer=1 {global.delayer=2}
if global.delayer=0 {global.delayer=1}

/* */
if global.mario_skusil=2
    {
    if instance_exists(global.zaatakowany_przeciwnik) { with(global.zaatakowany_przeciwnik) {moze_isc_po_skuszeniu=1}}
    x+=20
    global.mario_skusil=3
    kokox=x
    kokoy=y
    podzielnik=0
    dodox=(kokox-dotykal.x)
    dodoy=(kokoy-dotykal.y)
    zabierz_ruch_przeciwnikom=1
    }
if global.mario_skusil=3
    {
    
    rusz_przeciwnikami=0
    dodox=dodox/(1.01+podzielnik)
    dodoy=dodoy/(1.01+podzielnik)
    podzielnik+=0.0008
    idzie=0
    speeder=0
    animacja=4
    x=dotykal.x+dodox
    y=dotykal.y+dodoy
    global.mario_skusil_id=dotykal
    
    if dodox<=1 && dodoy<=1 && dodox>=-1 && dodoy>=-1 && place_meeting(x,y,o_map_atakujacy_przeciwnik) 
        {
        kefir=instance_place(x,y,o_map_atakujacy_przeciwnik) 
        with(kefir) {uciekaj_gdy_mario_skusil=1;moze_isc=1;}
        
        }
    if dodox<=1 && dodoy<=1 && dodox>=-1 && dodoy>=-1 && !place_meeting(x,y,o_map_atakujacy_przeciwnik) 
        {
        dodatkowa_chmurka_po_zdechnieciu=1
        part_system_depth(global.particle_map_sterring,depth+100) 
        part_particles_create(global.particle_map_sterring,x,y,global.part_map_chmurker,3);
        part_system_depth(global.particle_map_przed_mario,depth-100) 
        part_particles_create(global.particle_map_przed_mario,x,y,global.part_map_chmurker,1);
        
        
        x=dotykal.x;y=dotykal.y;global.mario_skusil=0;animacja=0;global.mario_skusil_id=0}
    }
if dodatkowa_chmurka_po_zdechnieciu>=1 && dodatkowa_chmurka_po_zdechnieciu<10
    {
    dodatkowa_chmurka_po_zdechnieciu+=1
    }
if dodatkowa_chmurka_po_zdechnieciu=10
    {
    dodatkowa_chmurka_po_zdechnieciu=11
    part_system_depth(global.particle_map_sterring,depth+10) 
    part_particles_create(global.particle_map_sterring,x,y,global.part_map_chmurker,1);
    }


/* */
if efekt_straty_zycia>0
    {
    efekt_straty_zycia=efekt_straty_zycia/1.05
    efekt_straty_zycia2+=20
    }

/* */
if podskocz_po_gameover=1
    {
    globalny_kat=-podskoczenie/4;
    jump=-podskoczenie/4;
    podskoczenie+=podskocznix
    podskocznix+=0.5
    if podskoczenie>0 {podskoczenie=0;podskocznix=0;podskocz_po_gameover=0;       if no_smoke_po_wejsciu=0 {part_system_depth(global.particle_map_sterring,depth+100) 
        part_particles_create(global.particle_map_sterring,x,y,global.part_map_chmurker,3);
        part_system_depth(global.particle_map_przed_mario,depth-100) 
        part_particles_create(global.particle_map_przed_mario,x,y,global.part_map_chmurker,1);animacja=0}}
    }

    
    

/* */
if place_meeting(x,y,o_map_przesun_scrool_mapowy)
    {
    zozo=instance_place(x,y,o_map_przesun_scrool_mapowy)
    global.map_baw_sie_scroolem_map_x2=zozo.set_x
    global.map_baw_sie_scroolem_map_y2=zozo.set_y
    }

/* */
if global.change_position_on_map<>0
    {
    x=(global.change_position_on_map).x
    y=(global.change_position_on_map).y
    
    
    
    
    global.change_position_on_map=0
    }

/* */
if global.posavegame_zeruj_animacje_namapie>=1 && global.posavegame_zeruj_animacje_namapie<=5
    {
    global.posavegame_zeruj_animacje_namapie+=1
    if idzie=0 {animacja=0}
    }

/* */
/*  */
