function player_block_state()
{
/// @description
// Get input
get_input();

// Calculate movement
calc_movement();


 //blocking
block_check();

//check state
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