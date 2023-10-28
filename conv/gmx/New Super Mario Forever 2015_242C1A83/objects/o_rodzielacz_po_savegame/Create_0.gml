timer=0


if global.choosed_save=0
{
global.hex_save_pos=0
    // WGRAJ ZMIENNE PLAYERA
    
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    global.map_completed[0]=hex_read(zapis2,global.hex_save_pos+1000+41)
    global.map_completed[1]=hex_read(zapis2,global.hex_save_pos+1000+42)
    global.map_completed[2]=hex_read(zapis2,global.hex_save_pos+1000+43)
    global.map_completed[3]=hex_read(zapis2,global.hex_save_pos+1000+44)
    global.map_completed[4]=hex_read(zapis2,global.hex_save_pos+1000+45)
    global.map_completed[5]=hex_read(zapis2,global.hex_save_pos+1000+46)
    global.map_completed[6]=hex_read(zapis2,global.hex_save_pos+1000+47)
    global.map_completed[7]=hex_read(zapis2,global.hex_save_pos+1000+48)
hex_close(zapis2)

}




if global.choosed_save=1
{
global.hex_save_pos=20000
    // WGRAJ ZMIENNE PLAYERA
    
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    global.map_completed[0]=hex_read(zapis2,global.hex_save_pos+1000+41)
    global.map_completed[1]=hex_read(zapis2,global.hex_save_pos+1000+42)
    global.map_completed[2]=hex_read(zapis2,global.hex_save_pos+1000+43)
    global.map_completed[3]=hex_read(zapis2,global.hex_save_pos+1000+44)
    global.map_completed[4]=hex_read(zapis2,global.hex_save_pos+1000+45)
    global.map_completed[5]=hex_read(zapis2,global.hex_save_pos+1000+46)
    global.map_completed[6]=hex_read(zapis2,global.hex_save_pos+1000+47)
    global.map_completed[7]=hex_read(zapis2,global.hex_save_pos+1000+48)
hex_close(zapis2)

}






if global.choosed_save=2
{
global.hex_save_pos=40000
    // WGRAJ ZMIENNE PLAYERA
    
    zapis2=hex_open("./data/gfx/beetlee_h.jpg")
    global.map_completed[0]=hex_read(zapis2,global.hex_save_pos+1000+41)
    global.map_completed[1]=hex_read(zapis2,global.hex_save_pos+1000+42)
    global.map_completed[2]=hex_read(zapis2,global.hex_save_pos+1000+43)
    global.map_completed[3]=hex_read(zapis2,global.hex_save_pos+1000+44)
    global.map_completed[4]=hex_read(zapis2,global.hex_save_pos+1000+45)
    global.map_completed[5]=hex_read(zapis2,global.hex_save_pos+1000+46)
    global.map_completed[6]=hex_read(zapis2,global.hex_save_pos+1000+47)
    global.map_completed[7]=hex_read(zapis2,global.hex_save_pos+1000+48)
hex_close(zapis2)

}


wgaj=0

if global.map_completed[0]<>0 {wgaj=1}
if global.map_completed[1]<>0 {wgaj=2}
if global.map_completed[2]<>0 {wgaj=3}
if global.map_completed[3]<>0 {wgaj=4}
if global.map_completed[4]<>0 {wgaj=5}
if global.map_completed[5]<>0 {wgaj=6}
if global.map_completed[6]<>0 {wgaj=7}
if global.map_completed[7]<>0 {wgaj=8}








