function calc_movement() {
    hsp += (right - left) * walk_spd;
	vsp += global.grav;

    // Drag
    hsp = lerp(hsp, 0, drag);

    // Stop
    if (abs(hsp) <= 0.1) hsp = 0;  // Added parentheses for the condition

    // Face the correct way
    if (hsp != 0) facing = sign(hsp);

    // Limit speed
    hsp = min(abs(hsp), max_hsp) * facing;
}