if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
draw_sprite_ext(global.water_roslinerker_1,0,x,y,1+sin(degtorad(stream))/10,1-sin(degtorad(stream))/5,sin(degtorad(stream/5))*10+45-randomer+sin(degtorad(trzesator))*trzesator_promien,c_white,1)

if trzesator_promien<=0.1
    {
    trzesator=0
    trzesator_promien=0
    trzesator_adder=30
    }


if trzesator_promien=0 {
if place_meeting(x,y,obj_mario)
    {
    trzesator_promien=30
    }}
if trzesator_promien<>0
    {
    trzesator_promien=trzesator_promien/1.05
    trzesator+=trzesator_adder
    trzesator_adder-=0.05
    }


stream+=1.2
}




