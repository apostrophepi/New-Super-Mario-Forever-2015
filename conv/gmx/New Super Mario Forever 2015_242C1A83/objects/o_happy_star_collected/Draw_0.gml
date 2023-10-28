draw_sprite_ext(s_happy_star,0,x,y,1/pomniejszacz,1/pomniejszacz,obracacz,c_white,znikacz)

if global.pauza=0
    {
    
    
    
    
    
    znikacz=znikacz/1.01
    pomniejszacz+=0.04
    if random(100)>70 {part_particles_create(global.particle_sys_1,x+random(50)-random(50),y-random(50)+random(50),global.part_zdobycie_monety,1)}
    obracacz+=2+szybkosciomierz
    if szybkosciomierz<5 {szybkosciomierz+=0.5}
    x+=ixor
    y+=iyor
    iyor+=0.15
    
    if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.1 {instance_destroy()}
    
    
    
    
    }
    
    
    

    

