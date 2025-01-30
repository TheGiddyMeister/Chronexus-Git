function player_idle_state() {
    /// @description
    // Get input
    get_input();

    // Calculate movement
    calc_movement();

    // Check state
    if (hsp != 0) {
        state = states.WALK;
    }

if attack {
		state = states.ATTACK;
		image_index = 0;
}
 
 if jump {
		jumped();
 }
 
 if block {
		state = states.BLOCK;
		hsp = 0;
 }
 
 if down {
		state = states.CROUCH;
		hsp = 0;
 }
 
 // Apply movement
    collision();

    // Apply animations
    anim();
}
