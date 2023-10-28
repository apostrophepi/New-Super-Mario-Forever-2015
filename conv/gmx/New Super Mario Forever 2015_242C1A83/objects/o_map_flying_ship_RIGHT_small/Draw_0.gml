
    anim+=1
    stream+=0.1

    draw_sprite_ext(s_map_ship,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,y-10+jumping_height+obliczatory,kierunek/1.5-sin(degtorad(anim*4))/50,1/1.5+sin(degtorad(anim*4))/50*kierunek/1.5,+360,c_white,1)
    draw_sprite_ext(s_map_shadow_1,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,y-10+jumping_height+50+obliczatory,kierunek*3/1.5-sin(degtorad(anim*4))/50,1/1.5+sin(degtorad(anim*4))/50,+360,c_white,1)

    draw_sprite_ext(global.gfx_smiglo2,0,x+sin(degtorad(animacja_chodzenia))*60+obliczatorx,-60+y+10+jumping_height+obliczatory,kierunek*sin(anim)-sin(degtorad(anim*4))/50,0.3+sin(degtorad(anim*4))/50*kierunek,+360,c_white,1)

