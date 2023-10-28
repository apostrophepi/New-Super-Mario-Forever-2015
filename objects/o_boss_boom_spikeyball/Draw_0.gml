if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*200 {
if global.pauza=0
    {
    if x>__view_get( e__VW.XView, 0 )+1000 {instance_destroy()}
    if x<__view_get( e__VW.XView, 0 )-200 {instance_destroy()}
    if random(100)>95 {part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke,1)}
    // kill
    lifetime-=1
if aktual_energy<>energy
    {
    migacz=1
    aktual_energy=energy
    }
if migacz>0
    {
    migacz-=0.1
    }

    if !place_meeting(x,y,obj_wall) {dziala=1}

    
    
    // ruch toczaka
    if stala_predkosc<>0 {szybkosc=stala_predkosc}
        
    x+=szybkosc*kierunek;
    kreciolek_anim-=szybkosc*kierunek/image_xscale

    // toczenie pod górkę
    if place_meeting(x,y,obj_wall) && lifetime>0 && dziala=1
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
    if !place_meeting(x,y+1,obj_wall) && lifetime>0 && dziala=1
        {
        for (i=0;i<ceil(szybkosc+3);i+=1)
            {
                if place_meeting(x,y+i+1,obj_wall) {y+=i;break;zwalniaj=10}
                }
        szybkosc+=(szybkosc+1)/100
        }

    if zwalniaj>0 {zwalniaj-=1}

    if szybkosc<0.005 {szybkosc=0}
    
    if szybkosc=0
        {
        if !place_meeting(x-4,y+2,obj_wall) {szybkosc=0.5;kierunek=-1;zwalniaj=50}
        if !place_meeting(x+4,y+2,obj_wall) {szybkosc=0.5;kierunek=1;zwalniaj=50}
        }
   
   
if !place_meeting(x,y+1,obj_wall) || dziala=0 {sekwencja=1}
if sekwencja=1
    {

    if grawitacja<12 {grawitacja+=0.5}
    if (!place_meeting(x,y+grawitacja-1,obj_wall) && grawitacja<0) || dziala=0 {y+=grawitacja};
    if grawitacja>0 {y+=grawitacja};
    }
if sekwencja=1 && place_meeting(x,y,obj_wall) && dziala=1 {sekwencja=2;SXMS_SFX_PlayExt(84,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
if sekwencja=2 {for (i=0;i<ceil(grawitacja);i+=1){if place_meeting(x,y,obj_wall){y-=1}}sekwencja=0;grawitacja=0;o_boss_blur_controller.distance=20;global.earth_quake=10;repeat(3){part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke2,1);part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke3,1);part_particles_create(global.particle_map_sterring,x,y+30,global.part_BOOMBOOM_smoke6,2)}}



    if szybkosc<0.01 {anim_5=random(1000)}
    anim_8=(obj_mario.x-x)/10*image_xscale
    anim_9=(obj_mario.y-y)/10*image_xscale
    
    
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
    
    
            draw_sprite_ext(s_spikey_10,0,x,y+10,-grawitacja/8,2,90,c_white,0.35)
            draw_sprite_ext(s_spikey_10,0,x,y+10,-grawitacja/8,2,90,c_white,0.35)
            draw_sprite_ext(s_spikey_10,0,x,y+10,-grawitacja/5,1,90,c_white,0.225)
            draw_sprite_ext(s_spikey_10,0,x,y+10,-grawitacja,2,90,c_white,0.01)

draw_sprite_ext(s_wiatrak_kolec,0,x,y,1,1,image_angle+sin(degtorad(anim_4))*5+kreciolek_anim,c_white,1)
 if migacz>0 {
 draw_set_blend_mode(bm_add)
 draw_sprite_ext(s_wiatrak_kolec,0,x,y,1+migacz/20,1+migacz/20,image_angle+sin(degtorad(anim_4))*5+kreciolek_anim,c_white,migacz)
 draw_set_blend_mode(bm_normal)
 }    
//draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.5)
        }

