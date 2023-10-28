draw_sprite_ext(global.gfx_lakitus_1,0,x+sin(degtorad(stream)),y,1/2+sin(degtorad(stream*4))/20,1/2-sin(degtorad(stream*3))/20,0,c_white,1)
draw_sprite_ext(s_map_shadow_1,0,x,1140,1+sin(degtorad(stream))/20,1/2-sin(degtorad(stream))/20,0,c_white,0.5)

if stream<90 {kierunek=1}
if stream>=90 && stream<=270 {kierunek=-1}
if stream>270  {kierunek=1}


if stream>360 {stream=0}
stream+=1

