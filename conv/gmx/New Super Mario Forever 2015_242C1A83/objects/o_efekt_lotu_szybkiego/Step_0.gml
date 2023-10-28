if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
if random(100)>50 {


part_particles_create(global.particle_sys_przed_morkami,__view_get( e__VW.XView, 0 )+random(__view_get( e__VW.WView, 0 )),__view_get( e__VW.YView, 0 )+random(__view_get( e__VW.HView, 0 )),global.part_efekt_lotu,1)}}

