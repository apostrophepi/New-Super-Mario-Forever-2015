if animacja=4{
// bieg berserkera
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,(((kat+sin(degtorad(run_kat))*run_promien/2-15)*strzelanie+strzelanie2)*berserk-berserk3)*size2+schylak,power_star_kolorek,1+miganie)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+miganie)*size2-berserk3/1.4,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+miganie)*size2+berserk3/1.2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7+sin(degtorad(berserk3))*10)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,power_star_kolorek,mrugacz[2])
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,((180+kat-sin(degtorad(run_kat))*run_promien/2+15)*berserk-berserk3)*size2+schylak,power_star_kolorek,1+miganie)}

if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,1+miganie)}

spadajace+=5
berserk2=1
kat=-10
//size=1
//run_kat-=20
run_promien=50
if run_pochylenie>-10 run_pochylenie-=0.3


if berserk2=1
    {
    berserk3=sin(degtorad(spadajace))*40
    }
}


if animacja=3{
// torpeda
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15)*strzelanie+strzelanie2+torpeda)*size2+schylak,power_star_kolorek,1+miganie)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size)*size2,y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+torpeda)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1+torpeda)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+strzelanie2/7-torpeda)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size)*size2,y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,power_star_kolorek,mrugacz[2])

if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(0000/2))*3+y+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*1.25,size,(kat+run_pochylenie+strzelanie2/7+sin(degtorad(0000/2))*5)*size2,power_star_kolorek,1+miganie)}

if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size)*size2,y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+torpeda*2)*size2+schylak,power_star_kolorek,1+miganie)}
if torpeda<70 {torpeda+=1}
kat-=10
}
