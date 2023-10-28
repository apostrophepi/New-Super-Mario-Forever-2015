if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2 {
if global.pauza=0
    {
    if spadnie=1 && x-200<obj_mario.x && x+200>obj_mario.x
        {
        spadnie=10
        spadacz=image_xscale*10
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_monty_digging,4)
        part_particles_create(global.particle_sys_1,x,y,global.part_effect_smoke,2)
        SXMS_SFX_PlayExt(98,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        }
    if spadnie=10 && spadacz<>0 {spadacz=spadacz/1.1;spadx=random(spadacz)-random(spadacz);image_angle+=spadx}
    if spadacz<=0.5
        {
        koko=instance_create(x,y,o_kolecorer_toczacy)
        koko.image_xscale=image_xscale
        koko.image_yscale=image_yscale
        koko.image_angle=image_angle
        koko.stala_predkosc=0
        if x>=obj_mario.x {koko.szybkosc=2;koko.kierunek=-1}
        if x<obj_mario.x {koko.szybkosc=2;koko.kierunek=1}
        instance_destroy()
        }
        
    anim_5=random(1000)
    anim_8=(obj_mario.x-x)/10*image_xscale
    anim_9=(obj_mario.y-y)/10*image_xscale
    if anim_5>990 && anim_6<=0 {anim_6=12;anim_7=0}
    if anim_6>0 {anim_6-=0.25;anim_7+=10}
    
    
    anim_4+=0.5
    if anim<1000
        {
        anim=random(1000)
        if anim>990 {anim=2000}
        }
    if anim=2000
        {
        if anim_2=0 && anim_3>0 {anim_3-=0.1}
        if anim_2=0 && anim_3<=0 {anim_2=1}
        if anim_2=1 && anim_3<1 {anim_3+=0.1}
        if anim_2=1 && anim_3>=1 {anim_2=0;anim=0}
        }
    }


draw_sprite_ext(global.gfx_kolco_kuler_1,0,x+spadx,y,image_xscale/1.3,image_yscale/1.3,image_angle+sin(degtorad(anim_4))*5+sin(degtorad(anim_7))*anim_6,c_white,1)
        
draw_sprite_ext(global.gfx_kolco_kuler_2,0,x+spadx+sin(degtorad(image_angle+90))*20*image_xscale+anim_8,y+cos(degtorad(image_angle+90+anim_8))*20*image_xscale+anim_9,image_xscale/1.3,(image_yscale/1.3)*anim_3,image_angle+sin(degtorad(anim_4))*5,c_white,anim_3)
draw_sprite_ext(global.gfx_kolco_kuler_2,0,x+spadx-sin(degtorad(image_angle+90))*20*image_xscale+anim_8,y-cos(degtorad(image_angle+90+anim_8))*20*image_xscale+anim_9,image_xscale/1.3,(image_yscale/1.3)*anim_3,image_angle+sin(degtorad(anim_4))*5,c_white,anim_3)
        
//draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.5)
        }

