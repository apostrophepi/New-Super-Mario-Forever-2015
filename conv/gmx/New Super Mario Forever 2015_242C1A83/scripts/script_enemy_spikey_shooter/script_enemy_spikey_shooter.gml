if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

if skacze=0
    {
    x+=kierunek
    if place_meeting(x,y,obj_wall) {y-=1}
    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {y+=1}
    }

if place_meeting(x+kierunek,y-1,obj_wall)
    {
    kierunek=kierunek*-1
    }

    
    
    
if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {sekwencja=1}
if sekwencja=1
    {
    if global.is_subplatforms=1
        {
        for (i=0;i<ceil(grawitacja);i+=1)
            {
            if collision_rectangle(x,y+39+i,x+32,y+40+i,o_subplatform,0,1) {y+=i;sekwencja=0; grawitacja=0;break;break;break}
            }
        }
    if grawitacja<12 {grawitacja+=0.5}
    y+=grawitacja;
    }
if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0}

// strzelanie

moze_skakac+=1

if moze_skakac>400 && skacze=0 && x<obj_mario.x+200 && x>obj_mario.x-200
    {
    skacze=1
    moze_skakac=0
    ilosc_skokow=3
    SXMS_SFX_PlayExt(77+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    }
if skacze=1 || skacze=3
    {
    czy_skacze=-3
    skacze+=1
    }
      
if skacze>0
    {
    wysokosc_skoku+=czy_skacze
    czy_skacze+=0.2
    if skacze>=0 && skacze<=3 && wysokosc_skoku=0 {wysokosc_skoku=0;skacze+=1;czy_skacze=0;SXMS_SFX_PlayExt(77+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    if skacze>=4 && wysokosc_skoku=0 {wysokosc_skoku=0;skacze=0;czy_skacze=0
    
    strzal=instance_create(x+16,y+16,o_enemu_spikey_strzal)
    strzal.grawitacja=-4
    strzal.szybkosc=0
    
    strzal=instance_create(x+16,y+16,o_enemu_spikey_strzal)
    strzal.grawitacja=-4
    strzal.szybkosc=-2
    
    strzal=instance_create(x+16,y+16,o_enemu_spikey_strzal)
    strzal.grawitacja=-4
    strzal.szybkosc=2}
    
    
    
    }


// efekt

if shooter<200 {shooter+=1}
if x<__view_get( e__VW.XView, 0 )+800 && x>__view_get( e__VW.XView, 0 )-40 && y>__view_get( e__VW.YView, 0 )-40 && y<__view_get( e__VW.YView, 0 )+600 && shooter>=200
    {

    shooter=0
    lolo=instance_create(x,y-20,o_enemy_spikey_fale_radiowe)
    lolo.leci=10
    lolo=instance_create(x,y-20,o_enemy_spikey_fale_radiowe)
    lolo.leci=-10
    lolo.image_xscale=-1
    }






// kill
    
if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_spikey_5
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
if kill=1000
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario.power_star_combo+=1
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_spikey_5
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }  

// gfx
if skacze=0 {stream+=0.1}}}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(s_spikey_2,0,x+16+1*kierunek,wysokosc_skoku+y+30+(sin(stream*2)*4)*kierunek*-1,kierunek,1,sin(stream*2)*20,c_white,1)
draw_sprite_ext(s_spikey_2,0,x+16-15*kierunek,wysokosc_skoku+y+30,kierunek/1.80,0.8,sin(stream*2)*20,c_white,1)
draw_sprite_ext(s_spikey_2,0,x+16-10*kierunek,wysokosc_skoku+y+30,kierunek/1.80,0.8,sin(stream*2)*20*-1,c_white,1)
draw_sprite_ext(s_spikey_2,0,x+16+1*kierunek,wysokosc_skoku+y+30,kierunek,1,sin(stream*2)*20*-1,c_white,1)
draw_sprite_ext(s_spikey_5,0,x+16,wysokosc_skoku+y+18+sin(stream)*2,kierunek,1,sin(stream)*5+360,c_white,1)}


