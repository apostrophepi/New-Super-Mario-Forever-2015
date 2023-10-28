if global.pauza=0{
energy=ma_energy 

if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.2 {seened=0}


// animacja
image_yscale=1*energy
image_xscale=1
image_angle=nachylenie

}


if image_index=0{
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5
    {
    for (i=0;i<energy;i+=1)
        {
        draw_sprite_ext(global.gfx_enemy_pokey_5,0,x+sin(degtorad(nachylenie+180))*(40*i)+sin(degtorad(nachylenie+180))*20,y+cos(degtorad(nachylenie+180))*(40*i)+cos(degtorad(nachylenie+180))*20,kierunek,1,360*(i/(energy+1))+stream*2.5,c_white,1)
        }

    }}
    
    //draw_sprite_ext(sprite_index,0,x,y,image_xscale,image_yscale,image_angle,c_white,0.5)
    
    
    
