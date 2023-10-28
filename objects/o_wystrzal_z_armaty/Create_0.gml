//Create Particle System
explosion = part_system_create();
part_system_depth(explosion,-200);

//Create Core Emitter
emit1 = part_emitter_create(explosion);
part_emitter_region(explosion,emit1,x,x+20-random(40),y,y+20-random(40),ps_shape_ellipse,ps_distr_gaussian);

//Fire Layer
prt1 = part_type_create();
part_type_shape(prt1,pt_shape_flare);
part_type_size(prt1,2,3,0,0);
part_type_color1(prt1,make_color_rgb(255,128,64));
part_type_alpha2(prt1,1,0);
part_type_life(prt1,25,50);
part_type_speed(prt1,10,12,-0.7,0);
part_type_direction(prt1,0,global.kierunek_aktualnej_armaty+360,0,0);
part_type_blend(prt1,true);
 
//"Fluffy" Layer
prt2 = part_type_create();
part_type_shape(prt2,pt_shape_explosion);
part_type_size(prt2,1,2,0,0);
part_type_color1(prt2,make_color_rgb(255,128,64));
part_type_alpha2(prt2,1,0);
part_type_life(prt2,25,50);
part_type_speed(prt2,10,12,-1,0);
part_type_direction(prt2,0,global.kierunek_aktualnej_armaty+360,0,0);
part_type_blend(prt2,true);

//Smoke Layer
prt3 = part_type_create();
part_type_shape(prt3,pt_shape_smoke);
part_type_size(prt3,1,3,0.002,0);
part_type_color_mix(prt3,c_dkgray,c_ltgray);
part_type_alpha2(prt3,1,0);
part_type_life(prt3,80,100);
part_type_gravity(prt3,0.1,90);
part_type_speed(prt3,1,2,0,0);
part_type_direction(prt3,global.kierunek_aktualnej_armaty+50,global.kierunek_aktualnej_armaty+130,0,0);

