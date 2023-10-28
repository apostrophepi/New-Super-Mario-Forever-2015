if global.pauza=0
{
kick_timer+=1
wybuchnie+=1
if wybuchnie>200 {image_alpha=random(1)}
if wybuchnie>320
    {
    instance_destroy()
    instance_create(x,y,o_explosion_bomb)
    SXMS_SFX_PlayExt(66,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    }
if kill=1
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    lolo=instance_create(x,y,o_enemy_kill);
    lolo.grafika=s_bomb_omb_1
    lolo.specjalny_kill=13
    lolo.kierunek_idzie=kierunek
    instance_destroy()
    }
    
if !place_meeting(x,y,obj_mario) && kick_timer>20 {kickable=1}
if !place_meeting(x,y,obj_mario) {dotknal=0}
if kicked=1 && dotknal=0
    {
    SXMS_SFX_PlayExt(51,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
    dotknal=1
    if obj_mario_anim.size2=1 {ixor=18;iyor=-10};
    if obj_mario_anim.size2=-1 {ixor=-18;iyor=-10};
    kicked=0
    kick_timer=0
    kickable=0
    obracacz=(300+random(120))*kierunek*-1
    }


timer+=1
if sekwencja=0{
if timer>100 {stream+=0.2}

if ixor<0 && !place_meeting(x,y,obj_wall) {x+=ixor/2;if place_meeting(x,y,obj_wall) {ixor=ixor*-1;for (i=0;i<20;i+=1) if place_meeting(x,y,obj_wall) {x+=1}}}
if ixor>0 && !place_meeting(x,y,obj_wall) {x+=ixor/2;if place_meeting(x,y,obj_wall) {ixor=ixor*-1;for (i=0;i<20;i+=1) if place_meeting(x,y,obj_wall) {x-=1}}}



ixor=ixor/1.05



if iyor<0 && !place_meeting(x,y,obj_wall) {y+=iyor;if place_meeting(x,y,obj_wall) {for (i=0;i<20;i+=1) if place_meeting(x,y,obj_wall) {y+=1}}}
if iyor>0 && !place_meeting(x,y,obj_wall) {y+=iyor;if place_meeting(x,y,obj_wall) {iyor=0;for (i=0;i<20;i+=1) if place_meeting(x,y,obj_wall) {y-=1}}}




if !place_meeting(x,y+1,obj_wall) {iyor+=1}
if iyor>12 {iyor=12}

if ixor>0 {kierunek=-1}
if ixor<0 {kierunek=1}

if obracacz<>0 {globalny_kat+=obracacz/20; obracacz=obracacz/1.05}


stream+=0.1}
}

draw_sprite_ext(s_bomb_omb_3,0,x+16+sin(degtorad(-20+globalny_kat*kierunek))*(15+sin(stream)*5),y+15+cos(degtorad(-20+globalny_kat*kierunek))*(15+sin(stream)*5),-0.5,0.5,globalny_kat*kierunek+sin(stream)*40,c_white,1)
draw_sprite_ext(s_bomb_omb_3,0,x+16+sin(degtorad(20+globalny_kat*kierunek))*(15+sin(stream)*5),y+15+cos(degtorad(20+globalny_kat*kierunek))*(15+sin(stream)*5),0.5,0.5,globalny_kat*kierunek-sin(stream)*40,c_white,1)

draw_sprite_ext(s_bomb_omb_1,0,x+18,y+18+sin(stream)*2,kierunek*0.5,0.5,sin(stream)*5+360-20*kierunek+globalny_kat*kierunek,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bomb_omb_4,0,x+18,y+18+sin(stream)*2,kierunek*0.5,0.5,sin(stream)*5+360-20*kierunek+globalny_kat*kierunek,c_white,image_alpha)
draw_set_blend_mode(bm_normal)





