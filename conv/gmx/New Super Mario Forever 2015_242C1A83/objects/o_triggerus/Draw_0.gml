if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
if wlacz=0{
draw_sprite_ext(global.triggerus,0,x,y,1,1,0,c_white,1)
draw_sprite_ext(global.triggerus2,0,x+20,y+15+sin(stream)*10,1+sin(stream)/10,1+sin(stream)/10,0,c_white,1)
draw_set_blend_mode(bm_add)
draw_sprite_ext(global.triggerus,0,x,y,1,1,0,c_white,sin(stream)/2)
draw_set_blend_mode(bm_normal)}
if wlacz=1{if zmien=0 {zmien=1}
draw_sprite_ext(global.triggerus3,0,x,y,1,1,0,c_white,1)}


stream+=0.1
if wysowator>0 && ile<8 {y-=5;ile+=1}
 
}





