if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
if global.pauza=0
    {
    // pluskanie toczaka
    
    if !place_meeting(x,y+30,o_water_define) && plusknie=0 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=1; part_particles_create(global.particle_sys_1,x,y-image_xscale*72,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],ceil(image_xscale)*3)}
    if place_meeting(x,y+30,o_water_define) && plusknie=1 {SXMS_SFX_PlayExt(93+round(random(1)),((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);plusknie=0; part_particles_create(global.particle_sys_1,x,y-image_xscale*72,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],ceil(image_xscale)*3)}
    
    if place_meeting(x,y+30,o_water_define) && !place_meeting(x,y+30-image_xscale*100,o_water_define) && random(100)>95 {part_particles_create(global.particle_sys_1,x,y-image_xscale*72,global.part_water_splash[0],3);part_particles_create(global.particle_sys_1,x,y,global.part_water_splash[1],1)}
    
    
    // ruch toczaka
    if stala_predkosc<>0 {szybkosc=stala_predkosc}
        
    x+=szybkosc*kierunek;
    kreciolek_anim-=szybkosc*kierunek/image_xscale

    // toczenie pod górkę
    if place_meeting(x,y,obj_wall)
        {
        if !place_meeting(x,y-ceil(szybkosc+1),obj_wall)
            {
            for (i=0;i<ceil(szybkosc+1);i+=1)
                {
                if place_meeting(x,y,obj_wall) {y-=1}
                }
            szybkosc-=szybkosc/70
            zwalniaj=10
            } else {kierunek=kierunek*-1; x=xprevious;}
            
        }
    // toczenie z górki
    if !place_meeting(x,y+1,obj_wall)
        {
        for (i=0;i<ceil(szybkosc+3);i+=1)
            {
                if place_meeting(x,y+i+1,obj_wall) {y+=i;break;zwalniaj=10}
                }
        szybkosc+=(szybkosc+1)/100
        }

    if zwalniaj>0 {zwalniaj-=1}
    if zwalniaj<=0 && szybkosc>0 {szybkosc-=0.005}
    if szybkosc<0.005 {szybkosc=0}
    
    if szybkosc=0
        {
        if !place_meeting(x-4,y+2,obj_wall) {szybkosc=0.5;kierunek=-1;zwalniaj=50}
        if !place_meeting(x+4,y+2,obj_wall) {szybkosc=0.5;kierunek=1;zwalniaj=50}
        }
   
   
if !place_meeting(x,y+1,obj_wall) && !collision_rectangle(x,y+image_xscale*72-1,x+32,y+image_xscale*72,o_subplatform,0,1) {sekwencja=1}
if sekwencja=1
    {
    if global.is_subplatforms=1
        {
        for (i=0;i<ceil(grawitacja);i+=1)
            {
            if collision_rectangle(x,y+image_xscale*72-1+i,x+32,y+image_xscale*72+i,o_subplatform,0,1) {y+=i;sekwencja=0; grawitacja=0;break;break;break}
            }
        }
    if grawitacja<12 {grawitacja+=0.5}
    y+=grawitacja;
    }
if sekwencja=1 && place_meeting(x,y,obj_wall) {sekwencja=2;SXMS_SFX_PlayExt(106,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0}



    if szybkosc<0.01 {anim_5=random(1000)}
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


draw_sprite_ext(global.gfx_kolco_kuler_1,0,x,y,image_xscale/1.3,image_yscale/1.3,image_angle+sin(degtorad(anim_4))*5+sin(degtorad(anim_7))*anim_6+kreciolek_anim,c_white,1)
        
draw_sprite_ext(global.gfx_kolco_kuler_2,0,x+sin(degtorad(image_angle+90+kreciolek_anim))*20*image_xscale+anim_8,y+cos(degtorad(image_angle+90+anim_8+kreciolek_anim))*20*image_xscale+anim_9,image_xscale/1.3,(image_yscale/1.3)*anim_3,image_angle+sin(degtorad(anim_4))*5+kreciolek_anim,c_white,anim_3)
draw_sprite_ext(global.gfx_kolco_kuler_2,0,x-sin(degtorad(image_angle+90+kreciolek_anim))*20*image_xscale+anim_8,y-cos(degtorad(image_angle+90+anim_8+kreciolek_anim))*20*image_xscale+anim_9,image_xscale/1.3,(image_yscale/1.3)*anim_3,image_angle+sin(degtorad(anim_4))*5+kreciolek_anim,c_white,anim_3)
        
//draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.5)
        }

