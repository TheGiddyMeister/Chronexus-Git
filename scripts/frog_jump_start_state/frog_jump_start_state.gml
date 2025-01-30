function frog_jump_start_state() {
    // Get inputs

    // Calculate movement

    // Modify state
    if (image_index >= image_number - image_speed) { // ✅ Fixed syntax
        state = frog_states.JUMP;
        vsp = jump_spd;
    }

    // Apply movement
    collision();

    // Animations
    frog_anim();
}
