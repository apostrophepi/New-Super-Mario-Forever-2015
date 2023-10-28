draw_background_part_ext(b_rury_pionowe,160,80,80,40,x,y-wysow[0],1,1,c_white,1)
    for (i=0;i<10;i+=1){
    draw_background_part_ext(b_rury_pionowe,160,40,80,40,x,y-40-i*40-wysow[0],1,1,c_white,1)}
    
    
    
if sekwencja=0
    {
    timer+=1
    if timer>20 {timer=0;sekwencja+=1}
    }
if sekwencja=1
    {
    wysow[0]=wysow[0]/1.03
    if wysow[0]<=1 {timer+=1}
    if timer>=100 {sekwencja=2;timer=0}
    }
if sekwencja=2
    {
    timer+=1
    if wysow[0]<10000 {wysow[0]+=0.1+wysow[0]/10}
    if wysow[0]>30 {
    if instance_exists(170475) {with (170475) {y=-1000}
    if instance_exists(170476) {with (170476) {y=-1000}}
    if instance_exists(170493) {with (170493) {y=-1000}}
    if instance_exists(170494) {with (170494) {y=-1000}}
    
    }}
    
        
        
    }

