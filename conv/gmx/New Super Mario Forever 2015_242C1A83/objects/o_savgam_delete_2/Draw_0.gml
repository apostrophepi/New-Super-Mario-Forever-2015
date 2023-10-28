if place_meeting(x,y,obj_mario)
    {
    global.choosed_save=1
    }

if global.english_or_polish=1
    {
    if deleted=0{
    if keyboard_check(vk_delete) {
    if place_meeting(x,y,obj_mario) {
    kasowanie+=1
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1,1,0,c_white,1)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1.5+sin(stream)/2,1.5+sin(stream)/2,0,c_white,0.15)
    draw_set_blend_mode(bm_normal)
    draw_set_font(global.map_fonts_1)
    draw_set_alpha(image_alpha)
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    draw_text_transformed(x-80,y-40+wysow[0]+sin(stream)*20,string_hash_to_newline("KASOWANIE"+textor[round(adder)]),1,1,0)}}
    }
    
    if deleted>0{deleted-=1;
     {
    if place_meeting(x,y,obj_mario) {
    kasowanie+=1
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1,1,0,c_white,1)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1.5+sin(stream)/2,1.5+sin(stream)/2,0,c_white,0.15)
    draw_set_blend_mode(bm_normal)
    draw_set_font(global.map_fonts_1)
    draw_set_alpha(image_alpha)
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    draw_text_transformed(x-80,y-40+wysow[0]+sin(stream)*20,string_hash_to_newline("SKASOWANY!"),1,1,0)}}
    }
    
    }
    
    
    
if global.english_or_polish=0
    {
    if deleted=0{
    if keyboard_check(vk_delete) {
    if place_meeting(x,y,obj_mario) {
    kasowanie+=1
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1,1,0,c_white,1)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1.5+sin(stream)/2,1.5+sin(stream)/2,0,c_white,0.15)
    draw_set_blend_mode(bm_normal)
    draw_set_font(global.map_fonts_1)
    draw_set_alpha(image_alpha)
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    draw_text_transformed(x-80,y-40+wysow[0]+sin(stream)*20,string_hash_to_newline("DELETING"+textor[round(adder)]),1,1,0)}}
    }
    
    if deleted>0{deleted-=1;
     {
    if place_meeting(x,y,obj_mario) {
    kasowanie+=1
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1,1,0,c_white,1)
    draw_set_blend_mode(bm_add)
    draw_sprite_ext(s_map_castle_point,0,x-100,y-40+wysow[0]+sin(stream)*20,1.5+sin(stream)/2,1.5+sin(stream)/2,0,c_white,0.15)
    draw_set_blend_mode(bm_normal)
    draw_set_font(global.map_fonts_1)
    draw_set_alpha(image_alpha)
    draw_set_color(c_white)
    draw_set_halign(fa_left)
    draw_set_valign(fa_middle)
    draw_text_transformed(x-80,y-40+wysow[0]+sin(stream)*20,string_hash_to_newline("DELETED!"),1,1,0)}}
    }
    
    }
    // DELETED
    
    adder+=0.1
    if adder>3 {adder=0}
    stream+=0.05
    if kasowanie>100 && deleted=0
        {
        deleting_sequence=1
        kasowanie=0
        deleted=100
        SXMS_SFX_PlayExt(118,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    if !keyboard_check(vk_delete)
        {
        kasowanie=0
        }
        
    // DELETING SEQUENCE
if deleting_sequence=1 {
deleting_sequence=0
    ilosc_przeciwnikow=0
    global.hex_save_pos=20000
    //if global.choosed_save=1 {global.hex_save_pos=20000}
    //if global.choosed_save=2 {global.hex_save_pos=40000}
    
    
    // nagraj pozostale zmienne - pozycja gracza i jego bonusy, itemy itp
    
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    

    
    hex_write(zapis2,global.hex_save_pos+1000+0,global.punkty)
    hex_write(zapis2,global.hex_save_pos+1000+1,global.zycia)
    hex_write(zapis2,global.hex_save_pos+1000+2,global.coins)
    hex_write(zapis2,global.hex_save_pos+1000+3,global.coins_red)
    hex_write(zapis2,global.hex_save_pos+1000+4,global.magic_stars)
    hex_write(zapis2,global.hex_save_pos+1000+5,global.map_uzyto_budzika)
    hex_write(zapis2,global.hex_save_pos+1000+6,global.map_uzyto_gwiazdki)
    hex_write(zapis2,global.hex_save_pos+1000+7,global.map_item_grzyby)
    hex_write(zapis2,global.hex_save_pos+1000+8,global.map_item_kwiatki)
    hex_write(zapis2,global.hex_save_pos+1000+9,global.map_item_listek)
    hex_write(zapis2,global.hex_save_pos+1000+10,global.map_item_burak)
    hex_write(zapis2,global.hex_save_pos+1000+11,global.map_item_boomer)
    hex_write(zapis2,global.hex_save_pos+1000+12,global.map_item_hammer)
    hex_write(zapis2,global.hex_save_pos+1000+13,global.map_item_duch)
    hex_write(zapis2,global.hex_save_pos+1000+14,global.map_item_bomber)
    hex_write(zapis2,global.hex_save_pos+1000+15,global.map_item_tanoki)
    hex_write(zapis2,global.hex_save_pos+1000+16,global.map_item_latacz)
    hex_write(zapis2,global.hex_save_pos+1000+17,global.map_item_gwiazdka)
    hex_write(zapis2,global.hex_save_pos+1000+18,global.map_item_budzik)
    hex_write(zapis2,global.hex_save_pos+1000+20,global.unknown_key_2)
    hex_write(zapis2,global.hex_save_pos+1000+21,global.unknown_key_3)
    hex_write(zapis2,global.hex_save_pos+1000+22,global.unknown_key_4)
    hex_write(zapis2,global.hex_save_pos+1000+23,global.unknown_key_5)
    hex_write(zapis2,global.hex_save_pos+1000+24,global.unknown_key_6)
    hex_write(zapis2,global.hex_save_pos+1000+19,global.happy_stars)
    
    hex_write(zapis2,global.hex_save_pos+1000+41,global.map_completed[0])
    hex_write(zapis2,global.hex_save_pos+1000+42,global.map_completed[1])
    hex_write(zapis2,global.hex_save_pos+1000+43,global.map_completed[2])
    hex_write(zapis2,global.hex_save_pos+1000+44,global.map_completed[3])
    hex_write(zapis2,global.hex_save_pos+1000+45,global.map_completed[4])
    hex_write(zapis2,global.hex_save_pos+1000+46,global.map_completed[5])
    hex_write(zapis2,global.hex_save_pos+1000+47,global.map_completed[6])
    hex_write(zapis2,global.hex_save_pos+1000+48,global.map_completed[7])
    
    
    

    hex_close(zapis2)
    
    

    
    
    
    }
    
    

