if global.pauza=0{
if y>room_height+180 {instance_destroy()}


nie_zabijaj_mario+=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

    {
    x+=ixor
    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {sekwencja=1}
    }

    
    
// combo

if combo_tick=0 && combo_life=1
    {
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.wartosc="100";
    global.punkty+=100
    }
if combo_tick=0 && combo_life=2
    {
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.wartosc="200";
    global.punkty+=200
    }    
if combo_tick=0 && combo_life=3
    {
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.wartosc="500";
    global.punkty+=500
    }     
if combo_tick=0 && combo_life=4
    {
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.wartosc="750";
    global.punkty+=750
    }        
if combo_tick=0 && combo_life=5
    {
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.wartosc="1000";
    global.punkty+=1000
    }     
if combo_tick=0 && combo_life=6
    {
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.wartosc="2000";
    global.punkty+=2000
    }     
if combo_tick=0 && combo_life=7
    {
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.wartosc="5000";
    global.punkty+=5000
    }       
if combo_tick=0 && combo_life>=8
    {
    combo_life=0
    SXMS_SFX_PlayExt(22,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    combo_tick=1;
    lolo=instance_create(x+20,y-50,o_cyferkownia);
    lolo.napis="1_UP!";
    global.zycia+=1
    global.punkty+=10000
    }   
        
        

    
    
// zabijanie przeciwnikow
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if place_meeting(x,y,o_enemy_goomba_lezy)
    {
    lezy=instance_place(x,y,o_enemy_goomba_lezy)
    lezy.kill=1
    combo_life+=1
    combo_tick=0
    }
if place_meeting(x,y,o_enemy_goomba)
    {
    enemy=instance_place(x,y,o_enemy_goomba)
    global.zmienna_dla_muszli=id
    with(enemy)
        {
        if muszluje=1
            {
            energy=0
            kill=10
            global.zmienna_dla_muszli.combo_life+=1
            global.zmienna_dla_muszli.combo_tick=0
            }
        if muszluje=0
            {
            global.zmienna_dla_muszli.kill=10;
            global.zmienna_dla_muszli.energy=0
            }
        }
    }}
        
        


    
    
    
    
    
    
if place_meeting(x,y,obj_wall)
    {
    for (i=0;i<ixor+1;i+=1)
        {
        if !place_meeting(x,y-i,obj_wall) {y-=i; break;}
        }
    }
    
if place_meeting(x,y,obj_wall) {ixor=ixor*-1}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if place_meeting(x+ixor,y,o_point_block)
    {
    
    murex=instance_place(x+ixor,y,o_point_block)
    with(murex) {zniszczony_od_muszli=1}
    ixor=ixor*-1
    }}
    
    


if sekwencja=1
    {
    if global.is_subplatforms=1
        {
        for (i=0;i<ceil(iyor);i+=1)
            {
            if collision_rectangle(x,y+39+i,x+32,y+40+i,o_subplatform,0,1) {y+=i;sekwencja=0; iyor=0;break;break;break}
            }
        }
    if iyor<12 {iyor+=0.5}
    if iyor<0 && !place_meeting(x,y+iyor,obj_wall) {y+=iyor};
    if iyor>0 {y+=iyor};
    }
if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2}
if sekwencja=2 {for (i=0;i<ceil(iyor);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;iyor=0}
    }
globalny_kat+=ixor*-1


// kill
if energy<=-1 && jaka_grafika<>1 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if jaka_grafika=0 {lolo.grafika=global.gfx_troopa_shell}
    if jaka_grafika=1 {lolo.grafika=s_buzzy_beetle_2}
    if jaka_grafika=2 {lolo.grafika=global.gfx_troopa_shell_2}
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    if jaka_grafika=0 {lolo.grafika=global.gfx_troopa_shell}
    if jaka_grafika=1 {lolo.grafika=s_buzzy_beetle_2}
    if jaka_grafika=2 {lolo.grafika=global.gfx_troopa_shell_2}
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }    
    
    
    
if kill=1
    {

    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_troopa_lezy);
    lolo.jaka_grafika=jaka_grafika
    if obj_mario_anim.size2=1 {lolo.ixor=8};
    if obj_mario_anim.size2=-1 {lolo.ixor=-8};
    instance_destroy()

}}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
if jaka_grafika=0 {draw_sprite_ext(global.gfx_troopa_shell,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)}
if jaka_grafika=1 {draw_sprite_ext(s_buzzy_beetle_2,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)}
if jaka_grafika=2 {draw_sprite_ext(global.gfx_troopa_shell_2,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)}}
