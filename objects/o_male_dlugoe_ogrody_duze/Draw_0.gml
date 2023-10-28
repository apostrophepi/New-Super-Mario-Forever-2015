if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*2 {
    

draw_sprite_ext(global.gfx_gorken_3,0,x+250,y-220,0.65+sin(degtorad(stream))/30,0.65-sin(degtorad(stream))/30,sin(degtorad(stream+100))*1,c_white,1)
draw_sprite_ext(global.gfx_gorken_1,0,x+200,y-230,0.65+sin(degtorad(stream))/30,0.65-sin(degtorad(stream))/30,sin(degtorad(stream+100))*1,c_white,1)
draw_sprite_ext(global.gfx_gorken_2,0,x+150,y-190,0.65+sin(degtorad(stream))/30,0.65-sin(degtorad(stream))/30,sin(degtorad(stream+100))*1,c_white,1)

ferdek=0
kefcio=0
for (i=0;i<8;i+=1)
    {
    ferdek+=1
    if ferdek=1 {kefcio=global.gfx_gorken_1}
    if ferdek=2 {kefcio=global.gfx_gorken_2}
    if ferdek=3 {kefcio=global.gfx_gorken_3}
    if ferdek=4 {kefcio=global.gfx_gorken_1}
    if ferdek=5 {kefcio=global.gfx_gorken_2}
    if ferdek=6 {kefcio=global.gfx_gorken_3}
    if ferdek=7 {kefcio=global.gfx_gorken_1}
    if ferdek=8 {kefcio=global.gfx_gorken_2}
    draw_sprite_ext(kefcio,0,x+i*50+50,y-150,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+20+i*50+50,y+20-150,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    
    
for (i=0;i<9;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*50+25,y-70,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+20+i*50+25,y+20-70,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    
    draw_sprite_ext(global.gfx_gorken_3,0,x+80,y-30,0.65+sin(degtorad(stream+340))/30,0.65-sin(degtorad(stream+340))/30,sin(degtorad(stream+100))*1,c_white,1)
     draw_sprite_ext(global.gfx_gorken_3,0,x+280,y-30,0.65+sin(degtorad(stream+340))/30,0.65-sin(degtorad(stream+340))/30,sin(degtorad(stream+100))*1,c_white,1)
     
     
for (i=0;i<10;i+=1)
    {
    draw_sprite_ext(global.gfx_gorken_1,0,x+i*50,y,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    draw_sprite_ext(global.gfx_gorken_2,0,x+20+i*50,y+20,0.65+sin(degtorad(stream+i*340))/30,0.65-sin(degtorad(stream+i*340))/30,sin(degtorad(stream+100))*1,c_white,1)
    }
    

    
    stream+=6
    }

