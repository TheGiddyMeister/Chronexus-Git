function player_crouch_state(){
  /// @description
    // Get input
    get_input();

    // Calculate movement
    calc_movement();
 
 //check state
//blocking
block_check();

   // Check state
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