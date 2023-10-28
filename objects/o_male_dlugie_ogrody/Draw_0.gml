if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
    

for (i=0;i<9;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*50+25,y-50,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+20+i*50+25,y+20-50,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    
for (i=0;i<10;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*50,y,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+20+i*50,y+20,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    

    
    stream+=6
    }

