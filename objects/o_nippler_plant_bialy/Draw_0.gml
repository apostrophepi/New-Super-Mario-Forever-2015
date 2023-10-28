if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
draw_sprite_ext(global.nippler_plant_6,0,x+20,y+30,1,1,sin(degtorad(stream*6))*5,c_white,1)

draw_sprite_ext(global.nippler_plant_4,0,x+23,y+20,1,1,sin(degtorad(stream*3))*20,c_white,1)
draw_sprite_ext(global.nippler_plant_5,0,x+17,y+20,1,1,-sin(degtorad(stream*3))*20,c_white,1)

stream+=5


if sekwencja=0
    {
    skacze_wyzej=0
    if x>obj_mario.x-120 && x<obj_mario.x+120 && obj_mario.sekwencja=1 {skacze_wyzej=-7}
    if sek=0 {grawitacja=-1-random(4)+skacze_wyzej;sek=1}
    if sek=1 {
    if grawitacja<0 && !place_meeting(x,y-15,obj_wall) {y+=grawitacja}
    if grawitacja>=0 {y+=grawitacja}
    grawitacja+=0.5
    if grawitacja>14 {grawitacja=14}
    if place_meeting(x,y,obj_wall) {sek=2;grawitacja=0}}
    if sek=2
        {
        for (i=0;i<15;i+=1)
            {
            if place_meeting(x,y,obj_wall) {y-=1}
            
            
            }
        sek=0
        }
    
    
    
    
    }
    
    
    
    // kill


if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.specjalny_kill=142
    lolo.kierunek=kierunek
    instance_destroy()
    }
    
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.specjalny_kill=142
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    } 
    
    
    
    }

