if global.pauza=0{
x+=ixor
y+=iyor
iyor+=0.5
obracacz-=min(10,abs(ixor*3))*kierunek
efekt+=1
oberwer+=1

if ixor>0 {kierunek=1}
if ixor<0 {kierunek=-1}

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1 {instance_destroy()}

if oberwer>5{oberwer=0;
    if place_meeting(x,y,o_enemy_goomba)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba);
        with (koko) {energy-=1};
        if efekt>4 {efekt=0;SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);instance_create(x,y,o_fireball_boom);}
        }
    if place_meeting(x,y,o_enemy_goomba_lezy)
        {
        global.hit_x=x
        global.hit_y=y
        koko=instance_place(x,y,o_enemy_goomba_lezy);
        with (koko) {kill=77};
        instance_destroy();
        instance_create(x,y,o_fireball_boom);
        } }
        
        
}



draw_sprite_ext(s_mario_hammers,0,x,y,kierunek,1,obracacz,c_white,1)
