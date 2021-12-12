index = 0;
watered = false;
function NextDay() {
	if (watered) {
		if (index < sprite_get_number(spr_parsnip) - 1) {
			index++;
		}
	}
	else {
		instance_destroy(id);
	}
	watered = false;
}