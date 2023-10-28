if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1 {
x+=sin(stream/5)/2
stream+=0.1







draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,-20+x-14-10*kierunek,-70+y+sin(stream),kierunek/2.4+rzut_anim/80*kierunek,1/2.4+rzut_anim/80,-sin(stream/4)*10+360+rzut_anim*kierunek-140*kierunek,c_white,1)

draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,-20+x-14+10*kierunek,-60+y+25-20,kierunek/2.4,1/2.4,(sin(stream/2)*40)/jump_anim+360+(jump_anim*kierunek)/10,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros,0,-20+x-16,-40+y+sin(stream/2)*2-10-20,kierunek/2.4,1/2.4,sin(stream/2)*5+360-10*kierunek,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_2,0,-20+x-14-10*kierunek,-60+y+25-20,kierunek/2.4,1/2.4,(sin(-stream/2)*40)/jump_anim+360-(jump_anim*kierunek)/10,c_white,1)
draw_sprite_ext(global.gfx_fat_hammer_bros_3,0,-20+x-14,-40+y-20,kierunek/2.4,1/2.4,sin(stream/2)*10+360+rzut_anim*kierunek-140*kierunek,c_white,1)


}

