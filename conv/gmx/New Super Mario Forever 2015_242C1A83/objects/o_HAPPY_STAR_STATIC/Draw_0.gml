if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(s_bonus_efekter,1,x-kreciolek/2,y,1.2,1.2,animowanie/10,c_white,0.1)
draw_set_blend_mode(bm_normal)
draw_sprite_ext(s_happy_star_2,1,x,y,1,1,-abs(sin(degtorad(obracator))*40),c_white,1)
draw_sprite_ext(s_happy_star_2,1,x,y,-1,1,abs(sin(degtorad(obracator))*40),c_white,1)
//draw_sprite_ext(global.power_start_gfx[floor(grafika)],1,x+15,y+50,2+0.1*(sin(degtorad(animowanie))),2-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,0.3)
draw_sprite_ext(s_happy_star,1,x,y,1+nalesnikuj/10+0.1*(sin(degtorad(animowanie))),1-nalesnikuj/10-0.1*(sin(degtorad(animowanie))),kreciolek,c_white,1)

}

if global.pauza=0 && (point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 || active=1)
    {
    obracator+=4
    active=1
    if y>room_height+100 {instance_destroy()}
    nalesnikuj=nalesnikuj/1.3

    
    animowanie+=5
    



    

        
    
    
    
    
    }


    
    

