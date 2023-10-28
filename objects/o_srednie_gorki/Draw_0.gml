if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
    
           
    
    draw_sprite_ext(global.gfx_gorken_2,0,x+70,y-180,0.75+sin(degtorad(stream+100))/20,0.75-sin(degtorad(stream+100))/20,sin(degtorad(stream))*5,c_white,1)
    draw_sprite_ext(global.gfx_gorken_1,0,x+140,y-220,0.75+sin(degtorad(stream+222))/20,0.75-sin(degtorad(stream+222))/20,sin(degtorad(stream))*5,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+180,y-180,0.75+sin(degtorad(stream+12))/20,0.75-sin(degtorad(stream+12))/20,sin(degtorad(stream))*5,c_white,1)
    
    draw_sprite_ext(global.gfx_gorken_1,0,x+50,y-150,0.75+sin(degtorad(stream+170))/20,0.75-sin(degtorad(stream+170))/20,sin(degtorad(stream))*5,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+100,y-150,0.75+sin(degtorad(stream+230))/20,0.75-sin(degtorad(stream+230))/20,sin(degtorad(stream))*5,c_white,1)
    
    draw_sprite_ext(global.gfx_gorken_1,0,x+150,y-150,0.75+sin(degtorad(stream+300))/20,0.75-sin(degtorad(stream+300))/20,sin(degtorad(stream+100))*3,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+200,y-150,0.75+sin(degtorad(stream+280))/20,0.75-sin(degtorad(stream+280))/20,sin(degtorad(stream+100))*3,c_white,1)
    
    
    draw_sprite_ext(global.gfx_gorken_1,0,x+340,y-150,0.75+sin(degtorad(stream+50))/20,0.75-sin(degtorad(stream+50))/20,sin(degtorad(stream+100))*3,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+300,y-150,0.75+sin(degtorad(stream+100))/20,0.75-sin(degtorad(stream+100))/20,sin(degtorad(stream+100))*3,c_white,1)


for (i=0;i<2;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_3,0,x+i*75+30+300,y-120,0.75+sin(degtorad(stream+i*20))/20,0.75-sin(degtorad(stream+i*20))/20,sin(degtorad(stream+100))*1,c_white,1)
    }
    
    
for (i=0;i<3;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_3,0,x+i*75+30,y-120,0.75+sin(degtorad(stream+i*20))/20,0.75-sin(degtorad(stream+i*20))/20,sin(degtorad(stream+100))*1,c_white,1)
    }
    
    

for (i=0;i<6;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_2,0,x+i*75+20,y-50,0.75+sin(degtorad(stream+i*40))/20,0.75-sin(degtorad(stream+i*40))/20,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_1,0,x+30+i*75+20,y+20-100,0.75+sin(degtorad(stream+i*40))/20,0.75-sin(degtorad(stream+i*40))/20,sin(degtorad(stream+100))*1,c_white,1)
    }
    


for (i=0;i<7;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*75,y,0.75+sin(degtorad(stream+i*40))/20,0.75-sin(degtorad(stream+i*40))/20,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+30+i*75,y+20,0.75+sin(degtorad(stream+i*40))/20,0.75-sin(degtorad(stream+i*40))/20,sin(degtorad(stream+100))*1,c_white,1)
    }
    

    
    stream+=2
    

}

