speed=5


nagraj_speed=0


kapciuj_maliny=0

stream=random(13123123)
image_xscale=0.5
image_yscale=0.5


//Smoke Layer
prt3 = part_type_create();
part_type_shape(prt3,pt_shape_smoke);
part_type_size(prt3,1,2,-0.02,0);
//part_type_color_mix(prt3,c_dkgray,c_ltgray);
part_type_alpha2(prt3,1,0);
part_type_life(prt3,80,100);
part_type_gravity(prt3,0.01,90);
part_type_speed(prt3,1,2,0.001,0);
part_type_direction(prt3,50,130,0,0);



//Create Particle System
explosion = part_system_create();
part_system_depth(explosion,-200);

//Create Core Emitter
emit1 = part_emitter_create(explosion);
part_emitter_region(explosion,emit1,x,x+20-random(40),y,y+20-random(40),ps_shape_ellipse,ps_distr_gaussian);



animowanie=0
oczkowanie=0

