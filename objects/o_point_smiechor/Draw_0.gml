if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {

draw_sprite_ext(global.gfx_point_music_box,0,x+20,y+20+downed+bump,1+abs(downed/40),1,bump2+downed/40,c_white,1-bump3)

if !(x-200<obj_mario.x && x+200>obj_mario.x && y-200<obj_mario.y && y+200>obj_mario.y)
    {
    draw_sprite_ext(global.gfx_point_smiechor_1,image_index,x+20+sin(promien/10)*3,y+25+downed+bump+sin(promien/4)*2,1,1,bump2+sin(promien/14)*5,c_white,1-bump3)
    draw_sprite_ext(global.gfx_point_smiechor_2,image_index*3,x+8+sin(promien/10)*3,y+8+downed+bump+sin(promien/4)*2,0.8,0.8,bump2+sin(promien/14)*5,c_white,1-bump3)
    draw_sprite_ext(global.gfx_point_smiechor_2,image_index*2,x+28+sin(promien/10)*3,y+8+downed+bump+sin(promien/4)*2,0.8,0.8,bump2+sin(promien/14)*5,c_white,1-bump3)
    }
    


if x-200<obj_mario.x && x+200>obj_mario.x && y-200<obj_mario.y && y+200>obj_mario.y
    {
    draw_sprite_ext(global.gfx_point_smiechor_3,image_index,x+20+sin(promien/10)*3,y+25+downed+bump+sin(promien/4)*2,1+sin(promien)/10,1+sin(promien)/5,bump2+sin(promien/14)*5,c_white,1-bump3)
    draw_sprite_ext(global.gfx_point_smiechor_3,image_index*3,x+8+sin(promien/10)*3,y+8+downed+bump+sin(promien/4)*2,0.8,0.8,bump2+sin(promien/14)*5,c_white,1-bump3)
    draw_sprite_ext(global.gfx_point_smiechor_3,image_index*2,x+28+sin(promien/10)*3,y+8+downed+bump+sin(promien/4)*2,0.8,0.8,bump2+sin(promien/14)*5,c_white,1-bump3)
    
    draw_sprite_ext(global.gfx_point_smiechor_4,image_index*3,x+8+sin(promien/10)*3+sin(degtorad(direction+90))*5,y+8+downed+bump+sin(promien/4)*2+cos(degtorad(direction+90))*5,0.8,0.8,bump2+sin(promien/14)*5,c_white,1-bump3)
    draw_sprite_ext(global.gfx_point_smiechor_4,image_index*2,x+28+sin(promien/10)*3+sin(degtorad(direction+90))*5,y+8+downed+bump+sin(promien/4)*2+cos(degtorad(direction+90))*5,0.8,0.8,bump2+sin(promien/14)*5,c_white,1-bump3)
    
    direction=point_direction(x,y,obj_mario.x,obj_mario.y)
    }


promien+=0.6+downed
image_index+=0.1


if global.pauza=0{


if place_meeting(x+1,y,obj_mario)
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario.szybkosc=20
    obj_mario.speeded=20
    downed=20;kicked=1
    lolo=instance_create(x-20,y+38,o_block_killer)
    lolo.image_angle=90
    }
if place_meeting(x-1,y,obj_mario)
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario.szybkosc=-20
    obj_mario.speeded=20
    downed=20;kicked=1
    lolo=instance_create(x+40,y+38,o_block_killer)
    lolo.image_angle=90
    }   
    
if place_meeting(x,y-2,obj_mario)
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    obj_mario.grawitacja=-20
    obj_mario.sekwencja=1
    downed=20;kicked=1
    instance_create(x,y+36,o_block_killer)
    }
if destroy=1
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    destroy=0
    obj_mario.grawitacja=10
    obj_mario.sekwencja=1
    downed=-20;kicked=1
    obj_mario.szybkosc=random(5)-random(5)
    instance_create(x,y-16,o_block_killer)
    }
if destroy=2
    {
    SXMS_SFX_PlayExt(112,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    destroy=0
    downed=-20;kicked=1
    instance_create(x,y-16,o_block_killer)
    }
    
if downed<>0 {downed=downed/1.1}
if bump<>0 {bump=bump/1.1;bump2=bump2/1.1}
if bump3<>0 && bump3<1 {bump3+=0.05}
}

} // end of deactivator

