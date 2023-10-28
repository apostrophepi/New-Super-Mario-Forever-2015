draw_sprite_ext(global.gfx_chmurker,0,x,y,wielkosc/10+sin(degtorad(stream))/50,wielkosc/10+sin(degtorad(stream))/50,0,c_white,image_alpha)
    
if global.pauza=0
    {
    x+=szybkosc
    image_alpha=image_alpha/1.05
    if image_alpha<=0.05 {instance_destroy()}
    if stream<180 {stream+=5}
    
    }
if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)>global.odleglosc_ekranu*1.2
    {
    instance_destroy()
    }

