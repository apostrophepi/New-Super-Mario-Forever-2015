if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
if random(100)>95 {part_particles_create(global.particle_sys_przed_morkami,odx+(max(0,random(dox)-250)),y-60,global.part_woda_efektoz,1)}}

anim+=1

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2.5 {
draw_sprite_ext(global.gfx_water_1,0,x,y,image_xscale,image_yscale,0,c_white,0.5)


for (i=0;i<ceil(image_xscale/2);i+=1)
    {
    draw_sprite_ext(global.gfx_water_2,anim,x+i*80,y-80,1,1,0,c_white,0.5)
    }
    
    
    
if global.graphics=6
    {
    
    if random(100)>98 {
    
    odx=0
    dox=0
    if x<__view_get( e__VW.XView, 0 ) {odx=__view_get( e__VW.XView, 0 )}
    if x>__view_get( e__VW.XView, 0 ) {odx=x}
    if x+image_xscale*40>__view_get( e__VW.XView, 0 )+800 {dox=800}
    if x+image_xscale*40<__view_get( e__VW.XView, 0 )+800 {dox=(x+image_xscale*40)-__view_get( e__VW.XView, 0 )}
    
     
     
    
    part_particles_create(global.particle_sys_1,odx+(max(0,random(dox)-250)),y-60,global.part_water_waves,1)
    
    }
    
    
    if random(100)>95 {
    
    odx=0
    dox=0
    if x<__view_get( e__VW.XView, 0 ) {odx=__view_get( e__VW.XView, 0 )}
    if x>__view_get( e__VW.XView, 0 ) {odx=x}
    if x+image_xscale*40>__view_get( e__VW.XView, 0 )+800 {dox=800}
    if x+image_xscale*40<__view_get( e__VW.XView, 0 )+800 {dox=(x+image_xscale*40)-__view_get( e__VW.XView, 0 )}
    
     
    
    part_particles_create(global.particle_sys_1,odx+(random(dox)),y-70+random(80),global.part_effect_water_1,1)
    
    }
    

    
    }
    
    
    
    
    
    
    
    }
    


