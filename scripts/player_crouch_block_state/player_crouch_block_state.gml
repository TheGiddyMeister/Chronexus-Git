function player_crouch_block_state(){
  /// @description
    // Get input
    get_input();

    // Calculate movement
    calc_movement();

    // Check state
 
//blocking
block_check();

if attack {
		state = states.ATTACK;
		image_index = 0;
}
 
 if jump {
		jumped();
 }
 
 // Apply movement
    collision();

    // Apply animations
    anim();
}