function frog_attack_state(){
    // Get inputs


    // Calculate movement

    // Modify state
	//attack warning
	if image_index = 2 and !inhale {
			inhale = true;
			alarm[inhale] = inhale_timer;
			image_speed = 0;
	}
	
	if attack {
			
	//set toungue depth
	depth = layer_get_depth(layer_get_id("Player")) - 1;
	
if image_index >= image_number - image_speed {
	state = frog_states.IDLE;
	alarm[CAN_ATTACK] = attack_delay;
	depth = layer_get_depth(layer_get_id("Enemy"));
	inhale = false;
	attack = false;
}
	}
    // Apply movement
collision()
    // Animations
    frog_anim();
}
