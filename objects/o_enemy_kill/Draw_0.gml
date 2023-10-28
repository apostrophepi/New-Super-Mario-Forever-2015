if global.pauza=0
    {
    if fifluj>0 {fifluj+=5}
    if fifluj<0 {fifluj-=5}
    
    iyor+=0.25/wodne_spadanie
    y+=iyor   
    x+=ixor 
    if y>__view_get( e__VW.YView, 0 )+800 {instance_destroy()}
    if fifluj=0{
    if kierunek_idzie=-1 && kierunek>-180 {kierunek-=10/spowalniacz}
    if kierunek_idzie=1 && kierunek<180 {kierunek+=10/spowalniacz}}
    }
    
    if specjalny_kill=0{
    draw_sprite_ext(grafika,0,x,y,wielkosc*kierunek_idzie,wielkosc,kierunek+fifluj,c_white,1)}
    
    if specjalny_kill=4{
    draw_sprite_ext(grafika,0,x,y,0.5*kierunek_idzie,0.5,kierunek+fifluj,c_white,1)}
    
    if specjalny_kill=5{
    obracacz+=kierunek_idzie
    draw_sprite_ext(global.gfx_enemy_big_fish_1,0,x,y,-kierunek_idzie,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-15*kierunek_idzie,y,-kierunek_idzie,1,360+obracacz,c_white,1)
    }
    
    
    
        if specjalny_kill=10{
    obracacz+=kierunek_idzie
    draw_sprite_ext(global.gfx_enemy_big_fish[2],0,x,y,-kierunek_idzie,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek_idzie,y,-kierunek_idzie/3,1/3,360+obracacz,c_white,1)
    }
    
    
    if specjalny_kill=6{
    obracacz+=kierunek_idzie
    draw_sprite_ext(global.gfx_enemy_big_fish[0],0,x,y,-kierunek_idzie,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek_idzie,y,-kierunek_idzie/3,1/3,360+obracacz,c_white,1)
    }
    
    if specjalny_kill=7{
    obracacz+=kierunek_idzie
    draw_sprite_ext(global.gfx_enemy_big_fish_4,0,x,y,-kierunek_idzie,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-5*kierunek_idzie,y,-kierunek_idzie/3,1/3,360+obracacz,c_white,1)
    }
    
    if specjalny_kill=8{
    obracacz+=kierunek_idzie
    draw_sprite_ext(global.gfx_enemy_sciskacz,0,x,y,-kierunek_idzie*0.3,0.3,360+obracacz,c_white,1)
    }
    
    if specjalny_kill=9{
    obracacz+=kierunek_idzie
    draw_sprite_ext(global.gfx_enemy_cheep_1,0,x,y,-kierunek_idzie,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_enemy_big_fish_2,0,x-15*kierunek_idzie,y,-kierunek_idzie,1,360+obracacz,c_white,1)
    }
        
    if specjalny_kill=11{
    obracacz+=kierunek_idzie
    draw_sprite_ext(global.gfx_enemy_pumpkin_1,0,x,y,0.5,0.5,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_enemy_pumpkin_2,0,x,y,0.5,0.5,360+obracacz,c_white,1)
    }
    
    if specjalny_kill=12{
    obracacz+=kierunek_idzie
    draw_sprite_ext(s_wiatrak_kolec,0,x,y,0.5,0.5,360+obracacz,c_white,1)
    }
    
    
    // nippler plant
        if specjalny_kill=142
        {
        if losower=0 {losower=1;ixor=random(8)-random(8)}
        iyor+=0.25
        
        draw_sprite_ext(global.nippler_plant_6,0,x+20,y+30,1,1,sin(degtorad(stream*6))*5+stream,c_white,1)

        draw_sprite_ext(global.nippler_plant_4,0,x+23,y+20,1,1,sin(degtorad(stream*3))*20+stream,c_white,1)
        draw_sprite_ext(global.nippler_plant_5,0,x+17,y+20,1,1,-sin(degtorad(stream*3))*20+stream,c_white,1)

        stream+=5
        }



    // Fuzzy
    if specjalny_kill=140
        {
        if losower=0 {losower=1;ixor=random(8)-random(8)}
        iyor+=0.25
        draw_sprite_ext(global.buzzet_1,0,x+20,y+20,0.50+sin(degtorad(anim))/20,0.50+sin(degtorad(anim))/20,sin(degtorad(anim))*10,c_white,1)
        draw_sprite_ext(global.buzzet_3,0,x+20,y+30,0.50+sin(degtorad(anim*2))/20,0.50+sin(degtorad(anim))/20,sin(degtorad(anim))*10,c_white,1)
        draw_sprite_ext(global.buzzet_2,0,x+12,y+15,0.50+sin(degtorad(anim))/120,0.50+sin(degtorad(anim))/120,-sin(degtorad(anim))*150,c_white,1)
        draw_sprite_ext(global.buzzet_2,0,x+28,y+15,0.50+sin(degtorad(anim))/120,0.50+sin(degtorad(anim))/120,sin(degtorad(anim))*180,c_white,1)
        anim+=5
        }
         // Fuzzy BIG
    if specjalny_kill=141
        {   
        draw_sprite_ext(global.buzzet_1,0,x+40,y+40,1+sin(degtorad(anim))/5,1-sin(degtorad(anim))/5,sin(degtorad(anim))*10,c_white,1)
draw_sprite_ext(global.buzzet_3,0,x+40,y+60,1+sin(degtorad(anim*2))/20,1+sin(degtorad(anim))/20-abs(sin(degtorad(anim)))+0.3,sin(degtorad(anim))*10,c_white,1)


draw_sprite_ext(global.buzzet_2,0,x+2+20,y+11+20,1+sin(degtorad(anim))/120,1+sin(degtorad(anim))/120,-sin(degtorad(anim))*150,c_white,1)
draw_sprite_ext(global.buzzet_2,0,x+36+20,y+11+20,1+sin(degtorad(anim))/120,1+sin(degtorad(anim))/120,sin(degtorad(anim))*180,c_white,1)
anim+=10
}



        
    if specjalny_kill=13{
    obracacz+=kierunek_idzie
    kierunek=1
    draw_sprite_ext(s_bomb_omb_3,0,x+16+sin(degtorad(-20+obracacz*kierunek))*(15+sin(obracacz/2)*5),y+15+cos(degtorad(-20+obracacz*kierunek))*(15+sin(obracacz/2)*5),-0.5,0.5,obracacz*kierunek+sin(obracacz/2)*40,c_white,1)
draw_sprite_ext(s_bomb_omb_3,0,x+16+sin(degtorad(20+obracacz*kierunek))*(15+sin(obracacz/2)*5),y+15+cos(degtorad(20+obracacz*kierunek))*(15+sin(obracacz/2)*5),0.5,0.5,obracacz*kierunek-sin(obracacz/2)*40,c_white,1)

draw_sprite_ext(s_bomb_omb_1,0,x+18,y+18+sin(obracacz/2)*2,kierunek*0.5,0.5,sin(obracacz/2)*5+360-20*kierunek+obracacz*kierunek,c_white,1)

    }
    
    
    // GOOMBA SPADA
    if specjalny_kill=14{
    if losuj=0 {losuj=1; ixor=random(5)-random(5)}
    globalny_kat+=kierunek*3
draw_sprite_ext(global.gfx_goomba,0,x+16,y+15+sin(stream)*2,1,1,globalny_kat*kierunek,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(-30+globalny_kat*kierunek))*(25+sin(stream)*5),1,1,globalny_kat*kierunek+sin(stream)*40,c_white,1)
draw_sprite_ext(global.gfx_goomba_leg,0,x+16+sin(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),y+15+cos(degtorad(30+globalny_kat*kierunek))*(25+sin(stream)*5),-1,1,globalny_kat*kierunek-sin(stream)*40,c_white,1)
        }
        
        
    if specjalny_kill=1{
    if obracacz<180 {obracacz+=5}
    draw_sprite_ext(global.gfx_lakitus_1,0,x,y,1,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lakitus_2,0,x+sin(degtorad(180+obracacz))*40,y+cos(degtorad(180+obracacz))*40,1,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lakitus_4,0,x+sin(degtorad(180+20+obracacz))*40,y+cos(degtorad(180+20+obracacz))*40,1,1,180+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lakitus_4,0,x+sin(degtorad(180-20+obracacz))*40,y+cos(degtorad(180-20+obracacz))*40,1,1,180+obracacz,c_white,1)}
    
    if specjalny_kill=2{
    if obracacz<180 {obracacz+=5}
    draw_sprite_ext(global.gfx_lakitus_1,0,x,y,1,1,360+obracacz,c_red,1)
    draw_sprite_ext(global.gfx_lakitus_2,0,x+sin(degtorad(180+obracacz))*40,y+cos(degtorad(180+obracacz))*40,1,1,360+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lakitus_4,0,x+sin(degtorad(180+20+obracacz))*40,y+cos(degtorad(180+20+obracacz))*40,1,1,180+obracacz,c_white,1)
    draw_sprite_ext(global.gfx_lakitus_4,0,x+sin(degtorad(180-20+obracacz))*40,y+cos(degtorad(180-20+obracacz))*40,1,1,180+obracacz,c_white,1)}
    
    
    // kill BIG HAMMER BROS
    if specjalny_kill=3{
    if kierunek_idzie=-1 && ixor=0 {ixor=random(3)}
    if kierunek_idzie=1 && ixor=0 {ixor=-random(3)}
    obracacz-=ixor/3
    
            draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,x+18-10*kierunek_idzie,y+sin(1),1,1,obracacz,c_white,1)
            draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,x+18+15*kierunek_idzie,y+25,kierunek_idzie,1,obracacz/1.5,c_white,1)
            draw_sprite_ext(global.gfx_fat_hammer_bros,0,x+16,y+sin(1/2)*2-10,kierunek_idzie,1,obracacz/2,c_white,1)
            draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,x+18-15*kierunek_idzie,y+25,kierunek_idzie,1,obracacz/1.5,c_white,1)
            draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,x+18,y,kierunek_idzie,1,obracacz,c_white,1)
    
    }

    
    
    


    
    

