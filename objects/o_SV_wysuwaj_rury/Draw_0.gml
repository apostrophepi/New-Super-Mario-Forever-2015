if sekwencja=0
    {
    timer+=1
    if timer>=180 {timer=0;sekwencja=1}
    }
if sekwencja=1
    {
    stream_rurowy+=0.1
    timer+=1
    if timer>0 {wysow[0]=wysow[0]/1.08}
     if timer>20 {wysow[1]=wysow[1]/1.08}
      if timer>40 {wysow[2]=wysow[2]/1.08}
      
     
    draw_background_part_ext(b_rury_pionowe,160,0,80,80,x,y+wysow[0]+sin(stream_rurowy)*2,1,1,c_white,1)
    for (i=0;i<10;i+=1){
    draw_background_part_ext(b_rury_pionowe,160,40,80,40,x,y+wysow[0]+80+i*40+sin(stream_rurowy)*2,1,1,c_white,1)}
    draw_sprite_ext(s_mega_sparcle_1,0,x+5,y+5+wysow[0]+sin(stream_rurowy),1+fifi,1+fifi,random(2),c_white,0.2+random(0.2))
    draw_sprite_ext(s_mega_sparcle_1,0,x+5,y+5+wysow[0]+sin(stream_rurowy),2+fifi+sin(stream_rurowy),2+fifi+sin(stream_rurowy),random(2)+stream_rurowy,c_white,0.2+random(0.2))
    draw_sprite_ext(s_mega_sparcle_1,0,x+5,y+5+wysow[0]+sin(stream_rurowy),3+fifi+sin(stream_rurowy),3+fifi+sin(stream_rurowy),random(2)+stream_rurowy,c_white,0.1+random(0.1))
    
    
    draw_background_part_ext(b_rury_pionowe,160,0,80,80,x+200,y+wysow[1]+sin(stream_rurowy+1)*2,1,1,c_white,1)
        for (i=0;i<10;i+=1){
    draw_background_part_ext(b_rury_pionowe,160,40,80,40,x+200,y+wysow[1]+80+i*40+sin(stream_rurowy+1)*2,1,1,c_white,1)}
    
    draw_sprite_ext(s_mega_sparcle_1,0,x+5+200,y+5+wysow[1]+sin(stream_rurowy),1+fifi,1+fifi,random(2),c_white,0.2+random(0.2))
    draw_sprite_ext(s_mega_sparcle_1,0,x+5+200,y+5+wysow[1]+sin(stream_rurowy),2+fifi+sin(stream_rurowy),2+fifi+sin(stream_rurowy),random(2)+stream_rurowy,c_white,0.2+random(0.2))
    draw_sprite_ext(s_mega_sparcle_1,0,x+5+200,y+5+wysow[1]+sin(stream_rurowy),3+fifi+sin(stream_rurowy),3+fifi+sin(stream_rurowy),random(2)+stream_rurowy,c_white,0.1+random(0.1))
    
    
    draw_background_part_ext(b_rury_pionowe,160,0,80,80,x+400,y+wysow[2]+sin(stream_rurowy+2)*2,1,1,c_white,1)
            for (i=0;i<10;i+=1){
    draw_background_part_ext(b_rury_pionowe,160,40,80,40,x+400,y+wysow[2]+80+i*40+sin(stream_rurowy+2)*2,1,1,c_white,1)}
    draw_sprite_ext(s_mega_sparcle_1,0,x+5+400,y+5+wysow[2]+sin(stream_rurowy),1+fifi,1+fifi,random(2),c_white,0.2+random(0.2))
    draw_sprite_ext(s_mega_sparcle_1,0,x+5+400,y+5+wysow[2]+sin(stream_rurowy),2+fifi+sin(stream_rurowy),2+fifi+sin(stream_rurowy),random(2)+stream_rurowy,c_white,0.2+random(0.2))
    draw_sprite_ext(s_mega_sparcle_1,0,x+5+400,y+5+wysow[2]+sin(stream_rurowy),3+fifi+sin(stream_rurowy),3+fifi+sin(stream_rurowy),random(2)+stream_rurowy,c_white,0.1+random(0.1))
    
    
    }
    
    if global.english_or_polish=0{
draw_set_font(global.map_fonts_1)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x+40,y-40+wysow[0],string_hash_to_newline("SLOT 1"),1,1,0)
draw_text_transformed(x+40+200,y-40+wysow[1],string_hash_to_newline("SLOT 2"),1,1,0)
draw_text_transformed(x+40+200*2,y-40+wysow[2],string_hash_to_newline("SLOT 3"),1,1,0)
if o_scrooling_SAVE_GAME_ROOM.setter=1200 && o_scrooling_SAVE_GAME_ROOM.steruj_scroolem=0 && napisy_1>0 {napisy_1=napisy_1/1.5}
if (o_scrooling_SAVE_GAME_ROOM.setter<>1200 || o_scrooling_SAVE_GAME_ROOM.steruj_scroolem<>0) && napisy_1<1000 {napisy_1+=1+napisy_1/5} 
draw_text_transformed(x+40+200,y-200-napisy_1,string_hash_to_newline("SELECT SAVE GAME SLOT!"),1,1,0)
}
if global.english_or_polish=1{
draw_set_font(global.map_fonts_1)
draw_set_alpha(image_alpha)
draw_set_color(c_white)
draw_set_halign(fa_center)
draw_set_valign(fa_middle)
draw_text_transformed(x+40,y-40+wysow[0],string_hash_to_newline("ZAPIS 1"),1,1,0)
draw_text_transformed(x+40+200,y-40+wysow[1],string_hash_to_newline("ZAPIS 2"),1,1,0)
draw_text_transformed(x+40+200*2,y-40+wysow[2],string_hash_to_newline("ZAPIS 3"),1,1,0)
} 

