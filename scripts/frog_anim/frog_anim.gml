 function frog_anim() {
    sprite_index = sprites_array[state];
    //mask_index = mask_array[state];  
    image_xscale = facing;
   
    switch (state) {
        case frog_states.JUMP: // ✅ Fixed colon
            if (image_index >= 2) { // ✅ Fixed parentheses
                image_speed = 0;
                if (vsp < 0) { // ✅ Fixed `if` statement formatting
                    image_index = 2;
                } else {
                    image_index = 3;
                }
            }
            break;
    }
}
