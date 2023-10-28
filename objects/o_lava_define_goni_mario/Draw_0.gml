draw_sprite_ext(global.gfx_water_3,0,x,y,image_xscale+1,image_yscale,0,c_white,0.75)
anim+=1

for (i=0;i<ceil(image_xscale/2);i+=1)
    {
    draw_sprite_ext(global.gfx_water_4,anim,x+i*80,y-80,1,1,0,c_white,0.75)
    }
if global.graphics=6
    {
    if random(100)>95 {
    
    odx=0
    dox=0
    if x<__view_get( e__VW.XView, 0 ) {odx=__view_get( e__VW.XView, 0 )}
    if x>__view_get( e__VW.XView, 0 ) {odx=x}
    if x+image_xscale*40>__view_get( e__VW.XView, 0 )+800 {dox=800}
    if x+image_xscale*40<__view_get( e__VW.XView, 0 )+800 {dox=(x+image_xscale*40)-__view_get( e__VW.XView, 0 )}
    
    
    
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
if random(100)>5 {part_particles_create(global.particle_sys_1,odx+(random(dox)),y-20+random(20),global.part_effect_water_sparkle_lawa,1)}
if random(100)>5 {part_particles_create(global.particle_sys_1,odx+(random(dox)),y-20+random(20),global.part_lava_smoke,1)}


}
    





    }
    }
    
    
    
    if global.pauza=0
        {
        timer+=1
        if timer>120 {goni=0.6}
        y-=goni
        
        if y>obj_mario.y+700 {y-=5}
        
        
        
        
        }


