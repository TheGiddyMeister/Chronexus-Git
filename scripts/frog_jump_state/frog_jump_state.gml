function frog_jump_state(){
	//get inputs
	//calculate movement
		hsp += spd * facing;
		vsp += global.grav;
		
		// limit speed
		hsp = min(abs(hsp), max_hsp) * facing;
		
	//modify state
	//check if on ground
	if on_ground() {
		state = frog_states.JUMP_LAND;
		hsp = 0
		image_index	= 0;
		image_speed	= 1;
		var turned = false;
		//look for solid one tile ahead
	}
	//apply movement
		collision();
		
	//animations
	frog_anim();
}