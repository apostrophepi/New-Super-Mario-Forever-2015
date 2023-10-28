if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.1{
draw_sprite_ext(s_znikajacy_murek,0,x-10+image_alpha*10,y-10+image_alpha*10,1,1,0,c_white,image_alpha)}

if global.pauza=0
    {
    timer+=1
    if timer<100 && image_alpha<1 {image_alpha+=0.02}
    if timer>=200 && image_alpha>0 {image_alpha-=0.02}
    if image_alpha<=0 && timer>=300 {timer=0}
    
    
    if image_alpha<>0 && !place_meeting(x,y,obj_mario) {fifi=instance_create(x,y,o_znikajacy_murek);fifi.timer=timer;fifi.image_alpha=image_alpha;instance_destroy()}
    
    
    
    }

