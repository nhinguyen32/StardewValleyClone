if (!inAction && !isMoving && currentTool != 0 && keyboard_check_pressed(ord("F"))) {
	image_index += sprites_per_action * currentTool;
	currentIndex = image_index;
	inAction = true;
}

if (image_index < currentIndex || image_index >= currentIndex + sprites_per_action - 1) {
	inAction = false;
}

//if (inAction) {
//	if (image_index < currentIndex + sprites_per_action) {
//		inAction = true;
//	}
//	else {
//		inAction = false;
//	}
//}

if (!inAction) {
	image_xscale = abs(image_xscale);
	if (direction = 0) { // right
		sprite_direction = 1;
	}
	else if (direction = 90) { // up
		sprite_direction = 2;
	}
	else if (direction = 180) { // left
		sprite_direction = 1;
		image_xscale = -abs(image_xscale);
	}
	else { // down
		sprite_direction = 0;
	}
	image_index = sprite_direction * sprites_per_direction;
	isMoving = false;
	if (keyboard_check_direct(ord("W")) || keyboard_check_direct(vk_up)) {
		image_index += 1 + (y mod (speed_factor * step_length * 2) + 1) / (speed_factor * step_length);
		direction = 90;
		y -= step_length;
		isMoving = true;
	}
	else if (keyboard_check_direct(ord("A")) || keyboard_check_direct(vk_left)) {
		image_index += 1 + (x mod (speed_factor * step_length * 2) + 1) / (speed_factor * step_length);
		direction = 180;
		x -= step_length;
		isMoving = true;
	}
	else if (keyboard_check_direct(ord("S")) || keyboard_check_direct(vk_down)) {
		image_index += 1 + (y mod (speed_factor * step_length * 2) + 1) / (speed_factor * step_length);
		direction = -90;
		y+= step_length;
		isMoving = true;
	}
	else if (keyboard_check_direct(ord("D")) || keyboard_check_direct(vk_right)) {
		image_index += 1 + (x mod (speed_factor * step_length * 2) + 1) / (speed_factor * step_length);
		direction = 0;
		x += step_length;
		isMoving = true;
	}
	
	if (keyboard_check_direct(ord("0"))) {
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