if global.pauza=0
{
    {   
    x=start_x
    y=start_y
    
    if stworz=0
        {
        stworz=1
        kolec=instance_create(x,y,o_enemy_wiatrak_kolec_kolec)
        }
    kolec.x=start_x+sin(degtorad(kat))*(odleglosc*dlugosc)
    kolec.y=start_y+cos(degtorad(kat))*(odleglosc*dlugosc)
    kolec.image_angle=kat 
        
    kat=kat_poczatkowy+szybkosc_dodana
    szybkosc_dodana+=szybkosc
    
    
    
        if point_distance(kolec.x,kolec.y,obj_mario.x,obj_mario.y)<200
        {
        if dzwiek_bujania>100
            {
            SXMS_SFX_PlayExt(105,kolec.x,global.glosnosc_dzwieku,-1,0,0);dzwiek_bujania=0
            }
        
        } else {dzwiek_bujania+=1}
        
        
        
        
        
    
    }}



for(i=0;i<dlugosc;i+=1)
        {
        draw_sprite_ext(s_chain,i,start_x+sin(degtorad(kat))*(odleglosc*i),start_y+cos(degtorad(kat))*(odleglosc*i),1,1,kat+90,c_white,1)
        }
        

