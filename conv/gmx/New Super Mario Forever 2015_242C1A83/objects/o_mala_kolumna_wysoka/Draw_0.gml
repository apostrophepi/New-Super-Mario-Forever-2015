if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.6 {
    
           
        draw_sprite_ext(global.gfx_gorken_3,0,x+45,y-280,0.5+sin(degtorad(stream+140))/30,0.5-sin(degtorad(stream+140))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_3,0,x+30,y-250,0.5+sin(degtorad(stream+140))/30,0.5-sin(degtorad(stream+140))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_3,0,x+60,y-220,0.5+sin(degtorad(stream+140))/30,0.5-sin(degtorad(stream+140))/30,sin(degtorad(stream+100))*1,c_white,1)
    
    draw_sprite_ext(global.gfx_gorken_2,0,x+10,y-200,0.5+sin(degtorad(stream+140))/30,0.5-sin(degtorad(stream+140))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_1,0,x+50,y+20-230,0.5+sin(degtorad(stream+140))/30,0.5-sin(degtorad(stream+140))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+30,y-180,0.5+sin(degtorad(stream+140))/30,0.5-sin(degtorad(stream+140))/30,sin(degtorad(stream+100))*1,c_white,1)

for (i=0;i<2;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_2,0,x+i*50,y-170,0.5+sin(degtorad(stream+i*140))/30,0.5-sin(degtorad(stream+i*140))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_1,0,x+20+i*50,y+20-170,0.5+sin(degtorad(stream+i*140))/30,0.5-sin(degtorad(stream+i*140))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    
for (i=0;i<2;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*50,y-110,0.5+sin(degtorad(stream+i*140))/30,0.5-sin(degtorad(stream+i*140))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+20+i*50,y+20-110,0.5+sin(degtorad(stream+i*140))/30,0.5-sin(degtorad(stream+i*140))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    
for (i=0;i<2;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_2,0,x+i*50,y-60,0.55+sin(degtorad(stream+i*240))/30,0.55-sin(degtorad(stream+i*240))/30,sin(degtorad(stream+200))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_1,0,x+20+i*50,y+20-60,0.55+sin(degtorad(stream+i*240))/30,0.55-sin(degtorad(stream+i*240))/30,sin(degtorad(stream+200))*1,c_white,1)
    }

for (i=0;i<2;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*50,y,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+20+i*50,y+20,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    

    
    stream+=6}

