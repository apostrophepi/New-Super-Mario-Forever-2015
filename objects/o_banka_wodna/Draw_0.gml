if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.4 {
draw_set_blend_mode(bm_add)
draw_sprite_ext(sprite_index,0,x,y+sin(degtorad(stream/2))*20,1.1+sin(degtorad(stream))/10,1.1-sin(degtorad(stream))/10,sin(degtorad(stream/4+20))*30,c_white,0.55)
draw_set_blend_mode(bm_normal)


draw_sprite_ext(sprite_index,0,x,y+sin(degtorad(stream/2))*20,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/10,sin(degtorad(stream/4))*30,c_white,0.25)

background_object.stream=stream
background_object.migaj=migaj
stream+=5+migaj
migaj=migaj/1.03

if animuj=0 && place_meeting(x,y,obj_mario)
    {
    animuj=1
    migaj=10
    }
if animuj=1 && !place_meeting(x,y,obj_mario)
    {
    animuj=0
    }    }

