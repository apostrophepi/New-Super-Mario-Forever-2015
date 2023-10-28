//draw_set_blend_mode(bm_add)

if pojawiator_sampel=0 && point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*0.8
    {
    pojawiator_sampel=1
    SXMS_SFX_PlayExt(325,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    }

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {

efektuj+=1
if efektuj>1000 {efektuj=0;instance_create(x+random(100)-random(100),y+sin(degtorad(image_angle/5))*44+random(100)-random(100),o_bonus_ring_effect)}


if collected=0 && place_meeting(x,y,obj_mario)
    {
    if global.english_or_polish=0 {lolo=instance_create(x,y,o_literkowania2);lolo.wartosc="SECRET_ON_MAP_UNLOCKED!"}
    if global.english_or_polish=1 {lolo=instance_create(x,y,o_literkowania2);lolo.wartosc="ODKRYŁEŚ_SEKRET_NA_MAPIE!"}
    collected=1
    SXMS_SFX_PlayExt(326,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    global.map_key_level_id=unlock
    global.map_key_level_collected=1
    global.game_over=2000 // otworz tajne przejscie
    }
if collected=1
    {
    efekciaruj+=0.02
    image_alpha=image_alpha/1.05
    if image_alpha<=0.01 {instance_destroy()}
    
    }
draw_sprite_ext(global.big_glow_sloneczny,0,x,y+sin(degtorad(image_angle/5))*44,2,2,image_angle/5,c_white,image_alpha)
image_angle+=3
stream+=0.2
draw_set_blend_mode(bm_normal)

draw_sprite_ext(s_secret_coin_unlocker,0,x,y+sin(degtorad(image_angle/5))*44,0+efekciaruj*5,0+efekciaruj*5,sin(degtorad(image_angle/2))*22,c_white,image_alpha*1.3)
draw_sprite_ext(s_secret_coin_unlocker,0,x,y+sin(degtorad(image_angle/5))*44,0+efekciaruj*8,0+efekciaruj*8,sin(degtorad(image_angle/2))*22,c_white,image_alpha*1.3)


draw_sprite_ext(s_secret_coin_unlocker,0,x,y+sin(degtorad(image_angle/5))*44,1+efekciaruj,1+efekciaruj,sin(degtorad(image_angle/2))*22,c_white,image_alpha)
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_secret_coin_unlocker,0,x,y+sin(degtorad(image_angle/5))*44,1.2+efekciaruj,1.2+efekciaruj,sin(degtorad(image_angle*2))*22,c_white,sin(stream)*image_alpha*0.05)

draw_sprite_ext(global.sparcle_3,0,x,y+sin(degtorad(image_angle/5))*44,0.6-sin(stream/3)/5,0.6+sin(stream/3)/5,sin(degtorad(image_angle*2))*22,c_white,image_alpha)
draw_sprite_ext(global.sparcle_3,0,x,y+sin(degtorad(image_angle/5))*44,0.8+sin(stream/3)/5,0.8-sin(stream/3)/5,sin(degtorad(image_angle*2))*22,c_white,image_alpha)

draw_sprite_ext(global.sparcle_3,0,x,y+sin(degtorad(image_angle/5))*44,1.3-sin(stream/2)/5,1.3+sin(stream/2)/5,sin(degtorad(image_angle*2))*22,c_white,image_alpha)
draw_sprite_ext(global.sparcle_3,0,x,y+sin(degtorad(image_angle/5))*44,1.2+sin(stream/2)/5,1.2-sin(stream/2)/5,sin(degtorad(image_angle*2))*22,c_white,image_alpha)

draw_sprite_ext(global.sparcle_1,0,x,y+sin(degtorad(image_angle/5))*44,2,2,image_angle/5,c_white,sin(stream/2)*image_alpha)
draw_set_blend_mode(bm_normal)






}




