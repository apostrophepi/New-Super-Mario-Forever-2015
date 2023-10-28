if point_distance(x,y,global.ekran_srodek_x,global.ekran_srodek_y)<=global.odleglosc_ekranu*1.3 {
if random(100)>80 {instance_create(x+random(80),y+30,o_water_bubble_small_antygrawiton)}
if place_meeting(x,y,obj_mario)
    {
    player=instance_place(x,y,obj_mario)
    if player.sekwencja<>0 {player.grawitacja+=1}
    }
    
    
    

}

