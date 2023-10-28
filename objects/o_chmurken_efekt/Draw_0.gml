if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*11.2
    {
    draw_sprite_ext(global.gfx_chmurker,0,x,y,image_xscale,image_xscale,0,c_white,image_alpha)
    }
if global.pauza=0
    {
    x+=szybkosc
    }
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*11.2
    {
    instance_destroy()
    }

