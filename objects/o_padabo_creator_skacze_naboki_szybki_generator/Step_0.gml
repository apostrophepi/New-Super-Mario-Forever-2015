if global.pauza=0{
timer+=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {


if timer>=150 {timer=0;koko=instance_create(x,y,o_enemy_padaboo_1);koko.ixor=random(1)-random(1); koko.iyor=-10}


}
if timer>=300 {timer=0}}

