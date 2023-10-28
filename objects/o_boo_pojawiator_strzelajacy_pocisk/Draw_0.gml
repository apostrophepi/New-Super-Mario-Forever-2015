if global.pauza=0
    {
    dlugosc_ogona=dlugosc_ogona/1.5+1
    energy-=1
    if energy<=0 {image_alpha-=0.05}
    if image_alpha<=0 {instance_destroy()}
    
    
    stream+=1
    if nagrywaj_speed<>0 {speed=nagrywaj_speed;nagrywaj_speed=0}
    }
if global.pauza<>0 && speed<>0 {nagrywaj_speed=speed;speed=0}
    

if global.graphics>=5
    {
    if random(100)>80 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_torch_fire,1)}
    if random(100)>99 {part_particles_create(global.particle_sys_3,x+random(50),y+random(20),global.part_effect_smoke,1)}
    }
    
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<global.odleglosc_ekranu*1{
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_spikey_10,0,x,y,(speed)/dlugosc_ogona,0.5,direction,c_white,0.5)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(s_fireball,0,x,y,0.5,0.5,stream*5,c_white,image_alpha)
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_fireball,0,x,y,0.7,0.7,stream*10,c_white,image_alpha/2)
draw_sprite_ext(s_boo_glow,0,x,y,1,1,0,c_white,image_alpha/2)
draw_set_blend_mode(bm_normal)
}

