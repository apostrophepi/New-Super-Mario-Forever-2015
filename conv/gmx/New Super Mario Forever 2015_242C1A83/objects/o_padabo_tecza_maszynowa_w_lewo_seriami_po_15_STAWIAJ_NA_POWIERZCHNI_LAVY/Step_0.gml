if global.pauza=0{
timer+=1
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {


if timer>=300 {tworz=15}
tworz2+=1
if tworz2>5 && tworz>0 {tworz-=1;tworz2=0;;koko=instance_create(x,y,o_enemy_padaboo_1);koko.ixor=-3; koko.iyor=-8;SXMS_SFX_PlayExt(45,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}


}
if timer>=300 {timer=0}}

