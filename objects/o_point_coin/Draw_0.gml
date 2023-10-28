if global.pauza=0 {
y-=gogo
scoring+=1
if scoring=22
    {
    lolo=instance_create(x+16,y,o_cyferkownia)
    lolo.wartosc=100
    }
if gogo<>0 {gogo=gogo/1.1}
if gogo<=3 {dodo=dodo/1.2}
if dodo<=0.01 
    {
    part_particles_create(global.particle_sys_1,x+16,y,global.part_effect_star2,3)
    instance_destroy()
    }}
    
// unpaused events
fifi+=1
if fifi>4 && global.graphics>=3
    {
    part_particles_create(global.particle_sys_1,x+random(20)-random(20),y+random(20)-random(20),global.part_effect_star2,3)
    fifi=0
    }
draw_sprite_ext(global.gfx_coin,0,x,y,abs(sin(koko)),1,0,c_white,dodo)
koko+=0.4

