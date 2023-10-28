if animacja=1{
// skok

if size2=1{
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),schylanie/5+y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,power_star_kolorek,1+miganie)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(150+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(150+kat+globalny_kat))*30/3)*size,size*size2,-size,((kat+sin(degtorad(run_kat))*run_promien/2-15+jump)*strzelanie+strzelanie2)*size2+schylak,power_star_kolorek,1+miganie)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(20+kat+globalny_kat))*35/3)*size),y+(cos(degtorad(20+kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+jump)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+sin(degtorad(ogon_merda))*20++ogon_uderzak,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,kat+sin(degtorad(run_kat))+run_pochylenie*size2+strzelanie2/10,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-22+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(-22+kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22-jump)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+jump/5+strzelanie2/10)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(180+kat+globalny_kat))*30/3)*size),y+(cos(degtorad(180+kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,power_star_kolorek,mrugacz[2])
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(220+kat+globalny_kat))*40/3)*size),y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+jump)*size2+schylak,power_star_kolorek,1+miganie)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(220+kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(220+kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,power_star_kolorek,1+miganie)}
}

if size2=-1{
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+((sin(degtorad(-150-kat+globalny_kat))*30/3)*size),schylanie/5+y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,size,((kat+sin(degtorad(run_kat))*run_promien/2-15-schylanie*2)*strzelanie+strzelanie2)*size2-240*size2,power_star_kolorek,1+miganie)}
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(-150-kat+globalny_kat))*30/3)*size),y+(cos(degtorad(-150-kat+globalny_kat))*30/3)*size,size*size2,-size,((kat+sin(degtorad(run_kat))*run_promien/2-15+jump)*strzelanie+strzelanie2)*size2+schylak,power_star_kolorek,1+miganie)}
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(-20-kat+globalny_kat))*35/3)*size),y+(cos(degtorad(-20-kat+globalny_kat))*35/3)*size,size*size2,size,(kat+sin(degtorad(run_kat))*run_promien*1+jump)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_ogon[anim],0,x,sin(degtorad(hamowanie/2))*3+y+sin(degtorad(run_kat))/2,size*size2,size,(kat+sin(degtorad(run_kat))+run_pochylenie+strzelanie2/5+sin(degtorad(hamowanie/2))*5)*size2+60*size2+sin(degtorad(ogon_merda))*20++ogon_uderzak,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_chest[anim],0,x,y+sin(degtorad(run_kat))/2,size*size2,size,kat+sin(degtorad(run_kat))+run_pochylenie*size2+strzelanie2/10,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_leg[anim],0,x+((sin(degtorad(+22-kat+globalny_kat))*30/3)*size),y+(cos(degtorad(+22-kat+globalny_kat))*30/3)*size,size*size2,size,(kat-sin(degtorad(run_kat))*run_promien*1-22-jump)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_head[anim],0,x+((sin(degtorad(-180-kat+globalny_kat))*30/3)*size),y+(cos(degtorad(-180-kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie+jump/5+strzelanie2/10)*size2,power_star_kolorek,1+miganie)
draw_sprite_ext(global.gfx_mario_mrugacz,0,x+((sin(degtorad(-180-kat+globalny_kat))*30/3)*size),y+(cos(degtorad(-180-kat+globalny_kat))*30/3)*size+sin(degtorad(run_kat)),(0.75+size/4)*size2,(0.75+size/4),(kat+run_pochylenie)*size2,power_star_kolorek,mrugacz[2])
if niesie=0 {draw_sprite_ext(global.gfx_mario_arm[anim],0,-run_pochylenie*size2/10+x+((sin(degtorad(-220-kat+globalny_kat))*40/3)*size),y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+jump)*size2+schylak,power_star_kolorek,1+miganie)}
if niesie=1 {draw_sprite_ext(global.gfx_mario_arm[anim],0,x+(schylanie/5+(sin(degtorad(-220-kat+globalny_kat))*40/3)*size),schylanie/5+y+(cos(degtorad(-220-kat+globalny_kat))*40/3)*size,size*size2,-size,(180+kat-sin(degtorad(run_kat))*run_promien/2+15+strzelanie2/10)*size2-160*size2,power_star_kolorek,1+miganie)}
}

if global.rodzaj_mario=10 {wiatraczkowanie+=5;draw_sprite_ext(global.gfx_mario_head2[9],0,x-10*size2*size,sin(degtorad(hamowanie/2))*3+y+wiatrak_obracator/2+sin(degtorad(run_kat))/2,(size*size2)*abs(sin(degtorad(wiatraczkowanie)))*(1.25),size+wiatrak_obracator/100,(kat+run_pochylenie+jump/5+strzelanie2/10)*size2,power_star_kolorek,image_alphar)}
if obj_mario.wiatraczkuje_sie=1 {if run_promien<20+abs(obj_mario.szybkosc*5) {run_promien+=1};run_kat+=3+abs(obj_mario.szybkosc)/20}
if obj_mario.wiatraczkuje_sie=1 {if run_promien>20+abs(obj_mario.szybkosc*5) {run_promien-=1};run_kat+=3+abs(obj_mario.szybkosc)/20}
if obj_mario.wiatraczkuje_sie=0 && run_promien>0 {run_promien=run_promien/1.1}
if obj_mario.wiatraczkuje_sie=1
    {
    run_pochylenie=0
    if obj_mario.grawitacja<0
        {
        draw_sprite_ext(s_swing_hit,0,x-30-12*obj_mario_anim.size2,y-30-32,1,-1,90,c_white,abs(0.5*sin(degtorad(wiatraczkowanie))))
        draw_sprite_ext(s_swing_hit,0,x+50-12*obj_mario_anim.size2,y+10-52,1,-1,-90,c_white,abs(0.5*sin(degtorad(wiatraczkowanie))))
        
        draw_sprite_ext(s_spikey_10,0,x,y+32,1,-obj_mario.grawitacja/20,90,c_white,0.5*sin(degtorad(wiatraczkowanie)))
        }
    if wiatrak_obracator>28
        {
        draw_sprite_ext(s_swing_hit,0,x-30-12*obj_mario_anim.size2,y-30-32,1,-1,90,c_white,abs(0.5*sin(degtorad(wiatraczkowanie))))
        draw_sprite_ext(s_swing_hit,0,x+50-12*obj_mario_anim.size2,y+10-52,1,-1,-90,c_white,abs(0.5*sin(degtorad(wiatraczkowanie))))
        
        
        }
    
    
    
    
    }



}
