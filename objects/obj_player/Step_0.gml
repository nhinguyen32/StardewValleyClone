if (direction = 0) { // right
	image_index = 3;
	image_xscale = 1;
}
else if (direction = 90) { // up
	image_index = 6;
}
else if (direction = 180) { // left
	image_index = 3;
	image_xscale = -1;
}
else { // down
	image_index = 0;
}
if (keyboard_check_direct(ord("W")) || keyboard_check_direct(vk_up)) {
	image_index = 7 + (y mod (speed_factor * 2) + 1) / speed_factor;
	direction = 90;
	y -= step_length;
}
else if (keyboard_check_direct(ord("A")) || keyboard_check_direct(vk_left)) {
	image_index = 4 + (x mod (speed_factor * 2) + 1) / speed_factor;
	direction = 180;
	x -= step_length;
}
else if (keyboard_check_direct(ord("S")) || keyboard_check_direct(vk_down)) {
	image_index = 1 + (y mod (speed_factor * 2) + 1) / speed_factor;
	direction = -90;
	y+= step_length;
}
else if (keyboard_check_direct(ord("D")) || keyboard_check_direct(vk_right)) {
	image_index = 4 + (x mod (speed_factor * 2) + 1) / speed_factor;
	direction = 0;
	x += step_length;
}