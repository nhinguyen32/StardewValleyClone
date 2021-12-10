if (!inAction) {
	image_xscale = 1;
	if (direction = 0) { // right
		sprite_direction = 1;
	}
	else if (direction = 90) { // up
		sprite_direction = 2;
	}
	else if (direction = 180) { // left
		sprite_direction = 1;
		image_xscale = -1;
	}
	else { // down
		sprite_direction = 0;
	}
	image_index = sprite_direction * sprites_per_direction;
	if (keyboard_check_direct(ord("W")) || keyboard_check_direct(vk_up)) {
		image_index += 1 + (y mod (speed_factor * 2) + 1) / speed_factor;
		direction = 90;
		y -= step_length;
	}
	else if (keyboard_check_direct(ord("A")) || keyboard_check_direct(vk_left)) {
		image_index += 1 + (x mod (speed_factor * 2) + 1) / speed_factor;
		direction = 180;
		x -= step_length;
	}
	else if (keyboard_check_direct(ord("S")) || keyboard_check_direct(vk_down)) {
		image_index += 1 + (y mod (speed_factor * 2) + 1) / speed_factor;
		direction = -90;
		y+= step_length;
	}
	else if (keyboard_check_direct(ord("D")) || keyboard_check_direct(vk_right)) {
		image_index += 1 + (x mod (speed_factor * 2) + 1) / speed_factor;
		direction = 0;
		x += step_length;
	}
	else if (keyboard_check_direct(ord("0"))) {
		currentTool = 0;
	}
	else if (keyboard_check_direct(ord("1"))) {
		currentTool = 1;
	}
	else if (keyboard_check_direct(ord("2"))) {
		currentTool = 2;
	}
	else if (keyboard_check_direct(ord("3"))) {
		currentTool = 3
	}
}