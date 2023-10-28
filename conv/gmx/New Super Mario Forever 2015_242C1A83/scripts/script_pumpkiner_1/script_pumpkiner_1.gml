if global.pauza=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || seened<>0 {

image_yscale=0.8
seened=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.5 {seened=0}

    {
    if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+39,x+32,y+40,o_subplatform,0,1) {y+=1}
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


// kill

if aktual_energy<>energy
    {
    migacz=1
    aktual_energy=energy
    }
if migacz>0
    {
    migacz-=0.1
    }

if kill=1
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_enemy_pumpkin_1
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }


if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_enemy_pumpkin_1
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }

if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=global.gfx_enemy_pumpkin_1
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }   
    
    
    
// gfx
stream+=0.05
}}
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(s_boo_glow,0,x,y+18+sin(degtorad(stream*10))*5,1.2,1.2,0,c_white,1)
draw_sprite_ext(global.gfx_enemy_pumpkin_1,0,x,y+10,kierunek+sin(stream)/20,1+sin(stream)/20,sin(stream)/10+360,c_white,1)
draw_sprite_ext(global.gfx_enemy_pumpkin_2,0,x,y+10,kierunek+sin(stream)/20,1+sin(stream)/20,sin(stream)/10+360,c_white,sin(stream))

if migacz>0 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_enemy_pumpkin_1,0,x,y+10,kierunek+sin(stream)/20,1+sin(stream)/20,sin(stream)/10+360,c_white,migacz)
draw_sprite_ext(global.gfx_enemy_pumpkin_2,0,x,y+10,kierunek+sin(stream)/20,1+sin(stream)/20,sin(stream)/10+360,c_white,migacz)
draw_set_blend_mode(bm_normal)
}





}
