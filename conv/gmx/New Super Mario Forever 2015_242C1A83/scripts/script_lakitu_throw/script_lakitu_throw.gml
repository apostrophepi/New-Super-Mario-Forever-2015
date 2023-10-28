if global.pauza=0
    {
    if energy<=0 {kill=10}

    if kill=10
        {
        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        lolo=instance_create(x,y,o_enemy_kill);
        lolo.kierunek_idzie=1
        lolo.grafika=s_wiatrak_kolec
        lolo.wielkosc=0.5
        lolo.ixor=random(4)-random(4)
        lolo.fifluj=random(5)-random(5)
        instance_destroy()
        }
if kill=1000
    {
    obj_mario.power_star_combo+=1
        SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        lolo=instance_create(x,y,o_enemy_kill);
        lolo.kierunek_idzie=1
        lolo.grafika=s_wiatrak_kolec
        lolo.wielkosc=0.5
        lolo.ixor=random(4)-random(4)
        lolo.fifluj=random(5)-random(5)
        instance_destroy()
    } 
    
    
    // algorytmy
    if y>__view_get( e__VW.YView, 0 )+800 || y<__view_get( e__VW.YView, 0 )-700 {instance_destroy()};
    if iyor<14 {iyor+=0.5}
    y+=iyor
    if !place_meeting(x,y,obj_wall) && iyor>=0 {zderza_sie=0};
    if zderza_sie=0 && place_meeting(x,y,obj_wall)
        {
        for (i=0;i<ceil(iyor);i+=1)
            {
            if place_meeting(x,y,obj_wall) {y-=1};
            }
        iyor=0
        if rodzaj=0 {instance_create(x,y,o_enemy_spikey)};
        instance_destroy();
        }
    
    anim+=10
    }

// animacja  
if rodzaj=0 && point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1
    {
    draw_sprite_ext(s_wiatrak_kolec,0,x+20,y+20,0.5,0.5,anim,c_white,1)
    }
    
    
    

