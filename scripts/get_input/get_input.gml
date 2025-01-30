function get_input() {
    // Keyboard input
    left = keyboard_check(vk_left);
    right = keyboard_check(vk_right);
    up = keyboard_check(vk_up);
    down = keyboard_check(vk_down);
    attack = keyboard_check_pressed(vk_shift);
    jump = keyboard_check_pressed(vk_space);
    jump_held = keyboard_check(vk_space);
    block = keyboard_check(ord("Z"));

    // Controller input
    var _dev = 0; // Gamepad index (0 = first connected gamepad)
    if (gamepad_is_connected(_dev)) {
        var _deadzone = 0.3;

        // Movement: Left stick or D-pad
        left = gamepad_axis_value(_dev, gp_axislh) < -_deadzone || gamepad_button_check(_dev, gp_padl) || left;
        right = gamepad_axis_value(_dev, gp_axislh) > _deadzone || gamepad_button_check(_dev, gp_padr) || right;
        up = gamepad_axis_value(_dev, gp_axislv) < -_deadzone || gamepad_button_check(_dev, gp_padu) || up;
        down = gamepad_axis_value(_dev, gp_axislv) > _deadzone || gamepad_button_check(_dev, gp_padd) || down;

        // Actions
        attack = gamepad_button_check_pressed(_dev, gp_face2) || attack; // Face button 2 (e.g., B)
        jump = gamepad_button_check_pressed(_dev, gp_face1) || jump;     // Face button 1 (e.g., A)
        jump_held = gamepad_button_check(_dev, gp_face1) || jump_held;  // Hold Face button 1
        block = gamepad_button_check(_dev, gp_shoulderr) || block;      // Right shoulder button
    } else {
        // Debug message for no gamepad
        show_debug_message("No gamepad connected.");
    }
}
