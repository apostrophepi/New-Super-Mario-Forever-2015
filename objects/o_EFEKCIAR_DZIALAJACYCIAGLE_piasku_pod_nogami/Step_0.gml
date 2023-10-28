if global.pauza=0
    {
    if obj_mario.sekwencja=0 && random(100)>95 && (obj_mario.szybkosc>1 || obj_mario.szybkosc<-1) {part_particles_create(global.particle_map_sterring,obj_mario.x+random(20)-random(20),obj_mario.y+48,global.part_BOOMBOOM_smoke,1)}
    
    }

