if global.pauza=0{

// kill

if kill=1
    {
    SXMS_SFX_PlayExt(56,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_moledie
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }


    
if energy<=0 {kill=10}

if kill=10
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_moledie
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
if kill=1000
    {
    obj_mario.power_star_combo+=1
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_moledie
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }  
    
    
y+=iyor

if iyor>0
    {
    for(i=0;i<iyor;i+=1)
        {
        if !place_meeting(x,y+i,obj_wall) {instance_create(x,y+i,o_enemy_monty_mole); instance_destroy();break;break}
        
        
        }
    
    
    
    
    }

iyor+=0.1



}



draw_sprite_ext(s_montymole_2,0,x+18,y+20+sin(stream),kierunek,1,sin(stream)*40+360,c_white,1)
draw_sprite_ext(s_montymole_1,0,x+16,y+sin(stream)*2,kierunek,1,sin(stream)*5+360,c_white,1)
draw_sprite_ext(s_montymole_2,0,x+18,y+20+sin(stream),kierunek,1,sin(-stream)*40+360,c_white,1)
draw_sprite_ext(s_montymole_3,0,x+18,y+5+sin(stream),kierunek,1,sin(stream)*40+360+120,c_white,1)

