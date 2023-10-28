draw_sprite_ext(s_small_thromb_marker,0,x,y,image_xscale,1,0,c_white,0.1)

//draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,0,c_white,1)
image_yscale=3
image_xscale=1
if global.pauza=0
    {
    
    if efekter>=10 {efekter=0;part_particles_create(global.particle_map_sterring,x,y+70,global.part_BOOMBOOM_smoke2,1)}
    if efekter=9 {part_particles_create(global.particle_map_sterring,x,y+70,global.part_BOOMBOOM_smoke5,1)}
    
    efekter+=1
    timer+=1
    if timer>150 {przyciemniaj+=0.5}
    if kierunek=-1 {x-=8-powiekszator*kierunek}
    if kierunek=1 {x+=8+powiekszator*kierunek}
    if przyciemniaj>20 {instance_destroy()}  
    powiekszator+=0.1
      
    draw_sprite_ext(s_boom_boom_6,0,x,y,image_xscale*kierunek+powiekszator*kierunek/20,2.8,0,c_white,1/przyciemniaj)
    draw_sprite_ext(s_boom_boom_6,0,x,y,image_xscale*kierunek+powiekszator*kierunek/20,random(3),0,c_white,random(1)/przyciemniaj)
    draw_sprite_ext(s_boom_boom_6,0,x,y,random(2)*kierunek+powiekszator*kierunek/20,random(2),0,c_white,1/przyciemniaj)
    draw_sprite_ext(s_boom_boom_6,0,x,y,image_xscale*kierunek+powiekszator*kierunek/20,random(1),0,c_white,0.5/przyciemniaj)
    draw_sprite_ext(s_boom_boom_6,0,x,y,image_xscale*kierunek+powiekszator*kierunek/20,random(2),0,c_white,0.5/przyciemniaj)
    draw_sprite_ext(s_spikey_10,0,x,y,image_xscale*kierunek*3+powiekszator*kierunek/20,1,0,c_white,0.5/przyciemniaj)
        
    }

