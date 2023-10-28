function script_step_sample() {
	if place_meeting(x,y,o_oiled_run)
	    {
	    step_sample=1
	    }
	if !place_meeting(x,y,o_oiled_run)
	    {
	    step_sample=0
	    }



}
