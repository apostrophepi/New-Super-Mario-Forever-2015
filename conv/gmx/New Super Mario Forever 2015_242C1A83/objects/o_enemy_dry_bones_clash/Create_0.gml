element1=instance_create(x,y,o_enemy_dry_bones_elements)
element1.rodzaj=0
element1.nalezy_do=id

element2=instance_create(x,y,o_enemy_dry_bones_elements)
element2.rodzaj=1
element2.nalezy_do=id

element3=instance_create(x,y,o_enemy_dry_bones_elements)
element3.rodzaj=1
element3.nalezy_do=id

element4=instance_create(x,y,o_enemy_dry_bones_elements)
element4.rodzaj=2
element4.nalezy_do=id

element5=instance_create(x,y,o_enemy_dry_bones_elements)
element5.rodzaj=2
element5.nalezy_do=id


ixor=random(2)-random(2)
iyor=-4

sekwencja=0
timer=0
rodzaj=0
krecenie=0

for (i=0;i<50;i+=1)
    {
    if !place_meeting(x,y-i,obj_mario) {y-=i; break;break}
    }
    



