if global.pauza<>0 && speed<>0 {nagraj_speed=speed;speed=0}
if global.pauza=0 && nagraj_speed<>0 {speed=nagraj_speed;nagraj_speed=0}


if global.pauza=0
    {
    
    if place_meeting(x,y,o_plapka_odbijator)
        {
        x=xprevious
        y=yprevious
        direction+=180
        
        }
    stream+=1

        if temporary_obracanie<kat || temporary_obracanie>kat {
        if point_distance(ixor,iyor,obj_mario.x,obj_mario.y)<150
        {
        if dzwiek_bujania>20
            {
            SXMS_SFX_PlayExt(105,ixor,global.glosnosc_dzwieku,-1,0,0);dzwiek_bujania=0
            }
        
        } else {dzwiek_bujania+=1}} else {temporary_obracanie=obracanie;dzwiek_bujania+=1}
        
        
        
        


    }



if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
draw_sprite_ext(global.gfx_disc_saw_1,0,x,y,1,1,stream*5,c_white,1)
draw_sprite_ext(global.gfx_disc_saw_3,0,x,y,1,1,0,c_white,1)
draw_sprite_ext(global.gfx_disc_saw_4,0,x,y,1,1,stream*10,c_white,abs(sin(degtorad(stream*50)))/2)
draw_sprite_ext(global.gfx_disc_saw_4,0,x,y,-1,1,stream*10,c_white,abs(sin(degtorad(stream*50)))/2)
draw_background(back_wiatrak_kulka,x-60,y-60)






}
