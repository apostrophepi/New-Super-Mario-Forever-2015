// TRAMPOLINA
// Trzymanie sie trampoliny
if animacja=15{


draw_sprite_ext(global.gfx_mario_tyl_arm[anim],0,x+(sin(degtorad(230+globalny_kat))*17+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(230+globalny_kat))*17+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat-sin(degtorad(hamowanie))*8,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_arm[anim],0,x+(sin(degtorad(130+globalny_kat))*17+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(130+globalny_kat))*17+cos(degtorad(globalny_kat))*berserk)*size,size*-1,size,globalny_kat+sin(degtorad(hamowanie))*8,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_leg[anim],0,x+(sin(degtorad(globalny_kat-30))*21+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat-30))*21+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat-sin(degtorad(hamowanie))*8-20,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_leg[anim],0,x+(sin(degtorad(globalny_kat+30))*21+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat+30))*21+cos(degtorad(globalny_kat))*berserk)*size,size*-1,size,globalny_kat+sin(degtorad(hamowanie))*8+20,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_chest[anim],0,x+(sin(degtorad(globalny_kat))+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat))+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_head[anim],0,x+(sin(degtorad(180+globalny_kat))*25+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(180+globalny_kat))*25+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,7*size+x+(sin(degtorad(globalny_kat))+sin(degtorad(globalny_kat))*berserk)*size,7*size+y+(cos(degtorad(globalny_kat))+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat+sin(degtorad(hamowanie))*5+30+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)

berserk=sin(degtorad(hamowanie))*5
hamowanie+=2
run_pochylenie=0

if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,+cos(degtorad(230+hamowanie))*3+sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,image_alphar)}
}

// wspinanie sie na trampolinie
if animacja=16{
draw_sprite_ext(global.gfx_mario_tyl_arm[anim],0,x+(sin(degtorad(230+globalny_kat))*17+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(230+globalny_kat))*17+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat-sin(degtorad(hamowanie))*16,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_arm[anim],0,x+(sin(degtorad(130+globalny_kat))*17+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(130+globalny_kat))*17+cos(degtorad(globalny_kat))*berserk)*size,size*-1,size,globalny_kat+sin(degtorad(hamowanie))*16,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_leg[anim],0,x+(sin(degtorad(globalny_kat-30))*(21+berserk-5)+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat-30))*(21+berserk-5)+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat-sin(degtorad(hamowanie))*16-20,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_leg[anim],0,x+(sin(degtorad(globalny_kat+30))*(21+lolo-5)+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat+30))*(21+lolo-5)+cos(degtorad(globalny_kat))*berserk)*size,size*-1,size,globalny_kat+sin(degtorad(hamowanie))*16+20,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_chest[anim],0,x+(sin(degtorad(globalny_kat))+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat))+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_head[anim],0,x+(sin(degtorad(180+globalny_kat))*25+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(180+globalny_kat))*25+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,7*size+x+(sin(degtorad(globalny_kat))+sin(degtorad(globalny_kat))*berserk)*size,7*size+y+(cos(degtorad(globalny_kat))+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat+sin(degtorad(hamowanie))*5+30+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)

climbing+=1
if climbing>10 {climbing=0;SXMS_SFX_PlayExt(42,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

run_pochylenie=0
berserk=sin(degtorad(hamowanie+180))*5
lolo=sin(degtorad(hamowanie))*5
hamowanie+=12
if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,-cos(degtorad(230+hamowanie))*5+sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,image_alphar)}

}


// chodzenie na boki na trampolinie
if animacja=17{
draw_sprite_ext(global.gfx_mario_tyl_arm[anim],0,x+(sin(degtorad(230+globalny_kat))*17+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(230+globalny_kat))*17+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat-sin(degtorad(hamowanie))*16,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_arm[anim],0,x+(sin(degtorad(130+globalny_kat))*17+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(130+globalny_kat))*17+cos(degtorad(globalny_kat))*berserk)*size,size*-1,size,globalny_kat-sin(degtorad(hamowanie))*16,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_leg[anim],0,x+(sin(degtorad(globalny_kat-30))*(21+berserk-5)+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat-30))*(21+berserk-5)+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat-sin(degtorad(hamowanie))*16-20,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_leg[anim],0,x+(sin(degtorad(globalny_kat+30))*(21+lolo-5)+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat+30))*(21+lolo-5)+cos(degtorad(globalny_kat))*berserk)*size,size*-1,size,globalny_kat+sin(degtorad(hamowanie))*16+20,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_chest[anim],0,x+(sin(degtorad(globalny_kat))+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(globalny_kat))+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_tyl_head[anim],0,x+(sin(degtorad(180+globalny_kat))*25+sin(degtorad(globalny_kat))*berserk)*size,y+(cos(degtorad(180+globalny_kat))*25+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,7*size+x+(sin(degtorad(globalny_kat))+sin(degtorad(globalny_kat))*berserk)*size,7*size+y+(cos(degtorad(globalny_kat))+cos(degtorad(globalny_kat))*berserk)*size,size,size,globalny_kat+sin(degtorad(hamowanie))*5+30+ogon_uderzak+sin(degtorad(ogon_merda))*20,power_star_kolorek,1+miganie)

climbing+=1
if climbing>10 {climbing=0;SXMS_SFX_PlayExt(42,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}

run_pochylenie=0
berserk=sin(degtorad(hamowanie+180))*5
lolo=sin(degtorad(hamowanie))*5
hamowanie+=12

if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,-cos(degtorad(230+hamowanie))*5+sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,image_alphar)}
}
