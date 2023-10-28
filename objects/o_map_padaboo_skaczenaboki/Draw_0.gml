depth=-y
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
stream+=0.2;
if sekwencja=0 && random(1000)>990 {sekwencja=1;ixor=9;ixor2=random(5)-random(5)}
if sekwencja=1
    {
    x+=ixor2;
    if random(10)>8{part_particles_create(global.particle_sys_1,x+random(10)-random(10),y+random(10)-random(10),global.part_effect_padaboo,1)};
    y-=ixor;ixor-=0.25; 
    if y>ystart
        {
        sekwencja=0;
        y=ystart;
        repeat(9) {part_particles_create(global.particle_sys_1,x+random(40)-random(40),y,global.part_effect_red_smoke,1)}
        x=xstart;
        }
    }
if ixor2>0 {dodo=1} else {dodo=-1}
if sekwencja=1
    {
    draw_sprite_ext(global.gfx_padaboo,0,x,y,0.5,0.5,(ixor*10-9*10)*dodo,c_white,(18+ixor)/18)
    draw_sprite_ext(global.gfx_padaboo,0,x,y,0.5+sin(stream)/10,0.5+sin(stream)/10,(ixor*10-9*10)*dodo,c_white,((18+ixor)/18)/2)
    
    
    }


}







