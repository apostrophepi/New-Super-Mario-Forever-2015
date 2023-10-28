if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
if global.pauza=0
    {
    if otwarty=3 {otwarty=0;dzielnik=1}
    if (energy_do<>energy || kill=1) && otwarty=0 && dzielnik>=1 
        {
        SXMS_SFX_PlayExt(48,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        otwarty=1
        kill=0
        energy_do=energy
        pompon=10
        for(i=0;i<ilosc_kolecorerow;i+=1)
            {
            if instance_exists(bulpon[i]) {bulpon[i].x=-100000;}
            }
        }
    if otwarty=1
        {
        if dzielnik>0 {dzielnik=dzielnik/1.1}
        }
    if otwarty=1 && dzielnik<=0.01 && (energy_do<>energy || kill=1)
        {
        SXMS_SFX_PlayExt(48,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)
        otwarty=2
        kill=0
        dzielnik=0
        energy_do=energy
        pompon=10
        }
    if otwarty=2 && dzielnik<1
        {
        dzielnik+=0.02
            if dzielnik>=1
            {
            otwarty=3
            dzielnik=1
            }
        }
    if kill=1 {kill=0;energy_do-=1}
    if energy_do<>energy {energy_do=energy;SXMS_SFX_PlayExt(56,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0)}
        
    
    
    

    stream+=2+pompon*5
    if pompon>0 {pompon=pompon/1.05}
    kill=0
    }
    for(i=0;i<ilosc_kolecorerow;i+=1)
        {
        draw_sprite_ext(global.gfx_bulpon_2,0,x,y,(point_distance(x,y,bulpon_nagraj_x[i],bulpon_nagraj_y[i])/220+sin(degtorad(stream+i*30))/20)*dzielnik,(1-sin(degtorad(stream+i*30))/20)*dzielnik,point_direction(x,y,bulpon_nagraj_x[i],bulpon_nagraj_y[i]),c_white,1)
        if otwarty>0
            {
            if instance_exists(bulpon[i]) {draw_sprite_ext(global.gfx_bulpon_3,0,x+(bulpon_nagraj_x[i]-x)*dzielnik,y+(bulpon_nagraj_y[i]-y)*dzielnik,(sin(degtorad(stream))/20*(pompon+1))*dzielnik+((bulpon[i].image_xscale)*dzielnik)/1.3,((bulpon[i].image_yscale)*dzielnik)/1.3,bulpon[i].image_angle,c_white,1-dzielnik/2)
            draw_sprite_ext(global.gfx_kolco_kuler_1,0,x+(bulpon_nagraj_x[i]-x)*dzielnik,y+(bulpon_nagraj_y[i]-y)*dzielnik,(sin(degtorad(stream))/20*(pompon+1))*dzielnik+((bulpon[i].image_xscale)*dzielnik)/1.3,((bulpon[i].image_yscale)*dzielnik)/1.3,bulpon[i].image_angle,c_white,dzielnik)
                       bulpon[i].x=-100000; if bulpon[i].spadnie=2 {bulpon[i].spadnie=1};if otwarty=3 {bulpon[i].x=bulpon_nagraj_x[i]}}}
        
        }
    
    draw_sprite_ext(global.gfx_bulpon_1,0,x,y,1+sin(degtorad(stream))/20*(pompon+1),1-sin(degtorad(stream))/20*(pompon+1),image_angle+360+sin(degtorad(stream))*3,c_white,1)
    
    
    
    
    }
    
    /*
    dzielnik=0
    energy=0
energy_do=0

rozdeptywalny=1
energy=0
niezjadywalny=1
stream=0
otwarty=0

image_angle=0
ilosc_kolecorerow=2
bulpon[0]=instance_create(x-100,y-100,o_kolecorer)
bulpon[0].image_xscale=1.3
bulpon[0].image_yscale=1.3
bulpon[0].image_angle=0
bulpon[0].nagraj_x=100
bulpon[0].nagraj_y=100


bulpon[1]=instance_create(x-120,y-200,o_kolecorer)
bulpon[1].image_xscale=1
bulpon[1].image_yscale=1
bulpon[1].image_angle=20
bulpon[1].nagraj_x=150
bulpon[1].nagraj_y=300

/* */
/*  */
