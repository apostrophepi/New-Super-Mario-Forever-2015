function script_time() {
	if global.pauza=0 && global.notime=0 && instance_number(o_boss_key)=0
	    {
	    zabierz_czas+=1
	    if zabierz_czas>29 && instance_number(o_magic_chest_duel_spawn)=0 {zabierz_czas=0;global.time-=1}
	    if global.time<=0 {global.time=0}
	    if global.time>999 {global.time=999}
	    }



}
