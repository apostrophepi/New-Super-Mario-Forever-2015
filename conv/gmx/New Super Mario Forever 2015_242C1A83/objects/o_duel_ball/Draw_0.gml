draw_sprite_ext(global.gfx_duel_ball,0,x,y,1+sin(stream)/10,1-sin(stream)/10,sin(stream/2)*20,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_duel_ball,0,x,y,1+sin(stream)/10,1-sin(stream)/10,sin(stream/2)*20,c_white,sin(stream)/2)
draw_sprite_ext(global.gfx_duel_ball,0,x,y,1.5+sin(stream)/2,1.5-sin(stream)/2,sin(stream/2)*60,c_white,-sin(stream)/2)
draw_set_blend_mode(bm_normal)

if global.pauza=0{
stream+=0.1
y+=sin(stream)

if kapciuj_maliny=1
    {
    SXMS_SFX_PlayExt(207,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    instance_destroy()
    part_emitter_burst(explosion,emit1,prt3,10);
    
    }

if place_meeting(x,y,obj_mario)
    {
    SXMS_SFX_PlayExt(207,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    instance_destroy()
    part_emitter_burst(explosion,emit1,prt3,10);
    
    }}

