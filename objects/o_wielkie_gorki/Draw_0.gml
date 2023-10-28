if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2.5 {
    
            draw_sprite_ext(global.gfx_gorken_2,0,x+70,y-280,1+sin(degtorad(stream+100))/10,1-sin(degtorad(stream+100))/10,sin(degtorad(stream))*5,c_white,1)
    draw_sprite_ext(global.gfx_gorken_1,0,x+140,y-320,1+sin(degtorad(stream+222))/10,1-sin(degtorad(stream+222))/10,sin(degtorad(stream))*5,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+180,y-280,1+sin(degtorad(stream+12))/10,1-sin(degtorad(stream+12))/10,sin(degtorad(stream))*5,c_white,1)
    
    draw_sprite_ext(global.gfx_gorken_1,0,x+50,y-220,1+sin(degtorad(stream+170))/10,1-sin(degtorad(stream+170))/10,sin(degtorad(stream))*5,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+100,y-200,1+sin(degtorad(stream+230))/10,1-sin(degtorad(stream+230))/10,sin(degtorad(stream))*5,c_white,1)
    
    draw_sprite_ext(global.gfx_gorken_1,0,x+150,y-220,1+sin(degtorad(stream+300))/10,1-sin(degtorad(stream+300))/10,sin(degtorad(stream+100))*3,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+200,y-200,1+sin(degtorad(stream+280))/10,1-sin(degtorad(stream+280))/10,sin(degtorad(stream+100))*3,c_white,1)
    
    
    draw_sprite_ext(global.gfx_gorken_1,0,x+450,y-220,1+sin(degtorad(stream+50))/10,1-sin(degtorad(stream+50))/10,sin(degtorad(stream+100))*3,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+500,y-200,1+sin(degtorad(stream+100))/10,1-sin(degtorad(stream+100))/10,sin(degtorad(stream+100))*3,c_white,1)


    for (i=0;i<2;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_3,0,x+i*100+30+400,y-120,1+sin(degtorad(stream+i*20))/10,1-sin(degtorad(stream+i*20))/10,sin(degtorad(stream+100))*3,c_white,1)
    }
    
    
for (i=0;i<3;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_3,0,x+i*100+30,y-120,1+sin(degtorad(stream+i*20))/10,1-sin(degtorad(stream+i*20))/10,sin(degtorad(stream+100))*3,c_white,1)
    }
    
    

for (i=0;i<6;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_2,0,x+i*100+20,y-70,1+sin(degtorad(stream+i*40))/10,1-sin(degtorad(stream+i*40))/10,sin(degtorad(stream+100))*3,c_white,1)
    draw_sprite_ext(global.gfx_gorken_1,0,x+50+i*100+20,y+20-120,1+sin(degtorad(stream+i*40))/10,1-sin(degtorad(stream+i*40))/10,sin(degtorad(stream+100))*3,c_white,1)
    }
    


for (i=0;i<7;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*100,y,1+sin(degtorad(stream+i*40))/10,1-sin(degtorad(stream+i*40))/10,sin(degtorad(stream+100))*3,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+50+i*100,y+20,1+sin(degtorad(stream+i*40))/10,1-sin(degtorad(stream+i*40))/10,sin(degtorad(stream+100))*3,c_white,1)
    }
    

    
    stream+=4}

