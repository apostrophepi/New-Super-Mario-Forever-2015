if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {


draw_sprite_ext(global.buzzet_1,0,x+40,y+40,1+sin(degtorad(anim))/5,1-sin(degtorad(anim))/5,sin(degtorad(anim))*10,c_white,1)
draw_sprite_ext(global.buzzet_3,0,x+40,y+60,1+sin(degtorad(anim*2))/20,1+sin(degtorad(anim))/20-abs(sin(degtorad(anim)))+0.3,sin(degtorad(anim))*10,c_white,1)


draw_sprite_ext(global.buzzet_2,0,x+2+20,y+11+20,1+sin(degtorad(anim))/120,1+sin(degtorad(anim))/120,-sin(degtorad(anim))*150,c_white,1)
draw_sprite_ext(global.buzzet_2,0,x+36+20,y+11+20,1+sin(degtorad(anim))/120,1+sin(degtorad(anim))/120,sin(degtorad(anim))*180,c_white,1)
anim+=10



// kill

if kill=1
    {
    SXMS_SFX_PlayExt(56,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_goomba_lezy);
    if obj_mario_anim.size2=1 {lolo.ixor=8};
    if obj_mario_anim.size2=-1 {lolo.ixor=-8};
    instance_destroy()
    }


if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.specjalny_kill=141
    lolo.kierunek=kierunek
    instance_destroy()
    }
    
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.specjalny_kill=141
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }

}

