if global.pauza=0{
timer+=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {


if timer>=200 {timer=0;koko=instance_create(x,y,o_enemy_padaboo_1);koko.ixor=random(1)-random(1); koko.iyor=-15}


}
if timer>=300 {timer=0}}

