if global.pauza=0
    {
    if obj_mario.sekwencja=1 
        {
        draw_sprite_ext(s_spikey_10,0,obj_mario.x+16,obj_mario.y+32,1+obliczator/5,1,-90+obj_mario.szybkosc*5,c_white,obliczator/40)
        draw_sprite_ext(s_spikey_10,0,obj_mario.x+16,obj_mario.y+32,0.25,1,-90+obj_mario.szybkosc*5+180,c_white,obliczator/40)
        draw_sprite_ext(s_spikey_10,0,obj_mario.x+16,obj_mario.y+32,0.5,1,-90+obj_mario.szybkosc*5+180,c_white,obliczator/40)
        
        if obliczator<obj_mario.grawitacja {obliczator+=0.2}
        if obliczator>obj_mario.grawitacja {obliczator-=0.2}
        if obliczator<0 {obliczator=0}
        }
    
    
    
    
    }

