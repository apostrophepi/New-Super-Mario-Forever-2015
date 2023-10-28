


if sekwencja=0
    {
    __view_set( e__VW.XView, 0, x-400-sin(degtorad(stream))*40 )
    __view_set( e__VW.YView, 0, y-300-sin(degtorad(stream))*30 )
    __view_set( e__VW.WView, 0, 800+sin(degtorad(stream))*40 )
    __view_set( e__VW.HView, 0, 600+sin(degtorad(stream))*30 )
    __background_set( e__BG.Alpha, 0, 0.5 )
    __background_set( e__BG.Alpha, 1, 0.5 )
    
    __background_set( e__BG.X, 0, __background_get( e__BG.X, 0 ) + (0.25) )
    __background_set( e__BG.X, 1, __background_get( e__BG.X, 1 ) + (0.5) )
    
    __background_set( e__BG.Y, 0, __background_get( e__BG.Y, 0 ) + (0.25/2) )
    __background_set( e__BG.Y, 1, __background_get( e__BG.Y, 1 ) + (0.5/2) )
    
    if stream<120 {stream+=0.5}
    
    draw_sprite_ext(s_map_shadow_1,0,x,y,3+sin(koko)/50,1-sin(koko)/50,0,c_white,1)
draw_sprite_ext(s_map_shadow_1,0,x,y,3+sin(koko)/50,1-sin(koko)/50,0,c_white,1)
draw_sprite_ext(s_map_last_castle_1,0,x,y,1+sin(koko)/50,1-sin(koko)/50,sin(koko/10)*5,c_white,1)
koko+=0.1

wybuch_time+=1
if wybuch_time>wybuch
    {
    wybuch_time=0
    wybuch-=4
    if wybuch<=5 {wybuch=5}
    instance_create(x+random(300)-random(300),y-random(300),o_fajny_duzy_wybuch_1_light)
    SXMS_SFX_PlayExt(75,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku/2,-1,0,0)
    
    
    }
    
    
    
    if wybuch<=15 {
    draw_sprite_ext(global.big_glow_sloneczny,0,x,y,mega_wybuch,mega_wybuch,koko*10,c_white,1)
    draw_sprite_ext(global.big_glow_sloneczny,0,x,y,mega_wybuch*2,mega_wybuch*2,koko*20,c_white,1)
    if mega_wybuch<4 {mega_wybuch+=0.025}
    
    }
    
    if mega_wybuch>=4 {sekwencja=1;timer=0;SXMS_SFX_PlayExt(404,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
    }
if sekwencja=1
    {
    draw_set_color(c_white)
    draw_set_alpha(mega_wybuch_alpha)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
    draw_set_alpha(1)
    mega_wybuch_alpha=mega_wybuch_alpha/1.01
    
    
    if mega_wybuch_alpha>=0.05 {blanker_time+=1}
    if blanker_time>=60 {blanker+=0.01}
    draw_set_color(c_black)
    draw_set_alpha(blanker)
    draw_rectangle(__view_get( e__VW.XView, 0 ),__view_get( e__VW.YView, 0 ),__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 ),__view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 ),0)
    draw_set_alpha(1)
    if blanker>=1 {room_goto(room_END_GAME_ANIM_2)}
    
    }




