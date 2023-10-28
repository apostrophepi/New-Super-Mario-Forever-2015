timer+=1
global.pauza=0

if wgaj>=1 {global.map_wgraj_wartosci=1;}

if timer>=5{


if wgaj=0 {room_goto(o_start_animation_game_room)
global.punkty=0
global.zycia=4
global.coins=0
global.coins_red=0
global.magic_stars=0
global.map_uzyto_budzika=0
global.map_uzyto_gwiazdki=0
global.map_item_grzyby=0
global.map_item_kwiatki=0
global.map_item_listek=0
global.map_item_burak=0
global.map_item_boomer=0
global.map_item_hammer=0
global.map_item_duch=0
global.map_item_bomber=0
global.map_item_tanoki=0
global.map_item_latacz=0
global.map_item_gwiazdka=0
global.map_item_budzik=0
global.player_started_new_game=1}


if wgaj=1 {room_goto(room_map_1);global.map_wgraj_wartosci=1}
if wgaj=2 {room_goto(room_map_2);global.map_wgraj_wartosci=1}
if wgaj=3 {room_goto(room_map_3);global.map_wgraj_wartosci=1}
if wgaj=4 {room_goto(room_map_4);global.map_wgraj_wartosci=1}
if wgaj=5 {room_goto(room_map_5);global.map_wgraj_wartosci=1}
if wgaj=6 {room_goto(room_map_6);global.map_wgraj_wartosci=1}
if wgaj=7 {room_goto(room_map_7);global.map_wgraj_wartosci=1}
if wgaj=8 {room_goto(room_map_8);global.map_wgraj_wartosci=1}}

