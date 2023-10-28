if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.2
{
chmurkuj+=0.05




if variable_local_exists("jaki_wyglad_windy") {
if jaki_wyglad_windy=5 {chmurkuj+=0.1}
draw_sprite_ext(s_grzyb_platform,0,x,y,1+abs(sin(chmurkuj))/10,1+abs(sin(chmurkuj))/10,0,c_white,1)

for (i=0;i<dlugosc_grzyba;i+=1)
    {
    draw_sprite_ext(s_grzyb_platform_2,0,x+1,y+85+i*40,1+abs(sin(chmurkuj))/10,1+abs(sin(chmurkuj))/10,0,c_white,1)
    }




}


if !variable_local_exists("jaki_wyglad_windy") {
draw_sprite_ext(s_windon_3,0,x,y,1,1,0,c_white,1)}
}

