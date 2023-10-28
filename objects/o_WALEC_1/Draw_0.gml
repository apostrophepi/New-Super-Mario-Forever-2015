if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {

if samplowanie=0 {sampel=SXMS_SFX_PlayExt(103,((x-__view_get( e__VW.XView, 0 ))/800)*255,global.glosnosc_dzwieku,-1,0,0);samplowanie=1}
if SXMS_SFX_Position(1,sampel,0)>70000 {SXMS_SFX_Position(0,sampel,0)}





SXMS_SFX_VolumeAbsolute(sampel,(global.glosnosc_dzwieku*((400)/(max((400),point_distance(x,y,obj_mario.x,obj_mario.y)))))/3)


} else {samplowanie=0}







if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.5 {

for(i=0;i<20;i+=1)
    {
    draw_sprite_ext(s_walec_2,0,x+sin(degtorad(image_angle+i*18+10))*200,y+cos(degtorad(image_angle+i*18+10))*200,1,1,0,c_white,1)
    }
    
    
    
draw_sprite_ext(s_walec_1,0,x,y,1,1,image_angle,c_white,1)

for(i=0;i<20;i+=1)
    {
    draw_sprite_ext(s_walec_2,0,x+sin(degtorad(image_angle+i*18))*170,y+cos(degtorad(image_angle+i*18))*170,1,1,0,c_white,1)
    }
    
draw_sprite_ext(global.cogwheel_1,0,x-130,y,0.5,0.5,-image_angle*2,c_white,1)
draw_sprite_ext(global.cogwheel_1,0,x,y+280,1,1,-image_angle/1.2+22.5,c_white,1)
draw_sprite_ext(global.cogwheel_1,0,x,y,1,1,image_angle/1.2,c_white,1)

draw_sprite_ext(global.armata_3,0,x,y,1,1,0,c_white,1)



    
    
    }

