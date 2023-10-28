


if lampka_najblizsza_id<>0 {
fofo=point_distance(obj_mario.x,obj_mario.y,lampka_najblizsza_id.x,lampka_najblizsza_id.y)


if fofo<200 {fofo=(200-fofo)/400}
if fofo>=200 {fofo=0}
draw_sprite_ext(global.gfx_darkozaur,0,obj_mario.x,obj_mario.y,2.3+fofo/5+wielkolud,2.3+fofo/5+wielkolud,0,c_white,0.5-fofo)
if wielkolud>0 && global.pauza=0 {wielkolud=wielkolud/1.01}}

