draw_sprite_ext(global.gfx_duel_ball,0,x,y+sin(stream)*18,1+sin(stream)/10,1-sin(stream)/10,sin(stream/2)*20,c_white,1)



draw_sprite_ext(global.gfx_bonus_3,1,x+13-15,y+sin(stream)*18+9-15+5,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie))),0,c_white,1)
draw_sprite_ext(global.gfx_bonus_2,1,x+13+5-15,y+sin(stream)*18+20-15+5,1+0.1*(sin(degtorad(animowanie))),1-0.1*(sin(degtorad(animowanie)))-abs(sin(degtorad(oczkowanie2))),0,c_white,1)

draw_set_blend_mode(bm_add)
draw_sprite_ext(global.gfx_bonus_3,1,x+13-15,y+sin(stream)*18+9-15+5,1*2+0.1*(sin(degtorad(animowanie))),1*2-0.1*(sin(degtorad(animowanie))),0,c_white,0.1)
draw_sprite_ext(global.gfx_bonus_2,1,x+13+5-15,y+sin(stream)*18+20-15+5,1*2+0.1*(sin(degtorad(animowanie))),1*2-0.1*(sin(degtorad(animowanie)))-abs(sin(degtorad(oczkowanie2))),0,c_white,0.1)
draw_set_blend_mode(bm_normal)
//draw_sprite_ext(s_bonus_marker,1,x,y,1,1,0,c_white,1)
if global.pauza<>0
    {
    if speed<>0 {nagraj_speed=speed;speed=0}
    }
if global.pauza=0
    {
    
    if place_meeting(x,y,obj_mario)
        {
        
        kefir=instance_place(x,y,obj_mario)
        if kefir.timer_skrot=101 {
        part_emitter_region(explosion,emit1,x,x+20-random(40),y,y+20-random(40),ps_shape_ellipse,ps_distr_gaussian);
        SXMS_SFX_PlayExt(22,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        lolor=instance_create(x,y,o_cyferkownia)
        lolor.napis="1UP!"
        global.zycia+=1
        instance_create(x,y,o_bonus_ring_effect)
        
        
        instance_create(x,y,o_efekt_zdobycia_monety2);;instance_create(x,y,o_efekt_zdobycia_monety2);instance_destroy();part_emitter_burst(explosion,emit1,prt3,10);}
        
        
        
        }
        
    if place_meeting(x,y,o_bonus_ZMIEN_KIERUNEK_DUEL_BALL)
        {
        kokor=instance_place(x,y,o_bonus_ZMIEN_KIERUNEK_DUEL_BALL)
        direction=kokor.direction
        
        
        }
        
        
    if nagraj_speed<>0 {speed=nagraj_speed;nagraj_speed=0}
    
    
    animowanie+=5
    if oczkowanie<1010 {oczkowanie=random(1000)}
    if oczkowanie>=990 && oczkowanie<=1000 {oczkowanie=10000}
    if oczkowanie>=10000 {oczkowanie+=1;oczkowanie2+=10}
    if oczkowanie2>360 {oczkowanie2=0;oczkowanie=0}
    
    


stream+=0.1
}

