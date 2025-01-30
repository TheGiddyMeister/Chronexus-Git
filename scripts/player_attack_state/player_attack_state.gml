function player_attack_state() {
    /// @description
    // Get input
    get_input();

    // Calculate movement
    calc_movement();

    // Check state
    if (image_index >= image_number - sprite_get_speed(sprite_index) / room_speed) {
		if !on_ground() state = states.JUMP else
	  if (hsp != 0) {
            state = states.WALK; // Assign WALK state if horizontal movement exists
        } else {
            state = states.IDLE; // Assign IDLE state if no horizontal movement
        }
    }
	
	 if jump {
		jumped();
		state = states.ATTACK;
			 }


//enable smaller jumps
if vsp < 0 and !jump_held vsp = max(vsp, jump_spd/ jump_dampner);

    // Apply movement
    collision();
	
    // Apply animations
    anim();
}
