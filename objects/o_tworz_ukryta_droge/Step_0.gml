if sekwencja=0
    {
    sekwencja=1;
    }
if sekwencja=1
    {
    timer+=1
    if ilosc_tilesow<=0 {instance_destroy()}
    if timer>20 && ilosc_tilesow>0
        {
        timer=0;
        ilosc_tilesow-=1
        SXMS_SFX_PlayExt(147,(x-__view_get( e__VW.XView, 0 ))/(__view_get( e__VW.XView, 0 )+800),global.glosnosc_dzwieku,-1,0,0)
        // TWORZENIE DROGI W LEWO
        if kierunek=1
        {
        odleglosc_x-=1
        randomuj_tiles=round(random(1))
        repeat(2) {part_particles_create(global.particle_sys_1,x-20+odleglosc_x*40+random(40),y-20+random(40),global.part_effect_smoker_map,1)}
        tiler=tile_add(b_map_tiles_1,680+randomuj_tiles*40,200,40,40,x-20+odleglosc_x*40,y-20,1000);tile_set_alpha(tiler,0);alpha_tile=0;is_adding_tile_alpha=1}
        
        // TWORZENIE DROGI W PRAWO
        if kierunek=2
        {
        odleglosc_x+=1
        randomuj_tiles=round(random(1))
        repeat(2) {part_particles_create(global.particle_sys_1,x-20+odleglosc_x*40+random(40),y-20+random(40),global.part_effect_smoker_map,1)}
        tiler=tile_add(b_map_tiles_1,680+randomuj_tiles*40,200,40,40,x-20+odleglosc_x*40,y-20,1000);tile_set_alpha(tiler,0);alpha_tile=0;is_adding_tile_alpha=1}
        
        // TWORZENIE DROGI DO GORY
        if kierunek=3
        {
        
        przesun=0
        randomuj_tiles=round(random(1))
        if randomuj_tiles=0 {przesun=0}
        if randomuj_tiles=1 {przesun=-160}
        
        repeat(2) {part_particles_create(global.particle_sys_1,x+odleglosc_x*40+random(40),y-20+random(40),global.part_effect_smoker_map,1)}
        tiler=tile_add(b_map_tiles_1,680+przesun,240,40,40,x-20,y+odleglosc_y*40,1000);tile_set_alpha(tiler,0);alpha_tile=0;is_adding_tile_alpha=1;odleglosc_y-=1}
        
        
        // TWORZENIE DROGI NA DOL
        if kierunek=4
        {
        
        przesun=0
        randomuj_tiles=round(random(1))
        if randomuj_tiles=0 {przesun=0}
        if randomuj_tiles=1 {przesun=-160}
        
        repeat(2) {part_particles_create(global.particle_sys_1,x+odleglosc_x*40+random(40),y-20+random(40),global.part_effect_smoker_map,1)}
        tiler=tile_add(b_map_tiles_1,680+przesun,240,40,40,x-20,y+odleglosc_y*40,1000);tile_set_alpha(tiler,0);alpha_tile=0;is_adding_tile_alpha=1;odleglosc_y+=1}
        
        }
        
        
        
    if is_adding_tile_alpha=1{
    tile_set_alpha(tiler,alpha_tile);
    tile_set_blend(tiler,c_white)
    if alpha_tile<1 {alpha_tile+=0.05}}
    
    
    }











/*
ilosc_tilesow=0
kierunek=0

sekwencja=0
timer=0

odleglosc=0

/* */
/*  */
