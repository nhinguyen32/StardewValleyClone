function NextDay(){
	obj_gameManager.day++;
	for (var i = 0; i < instance_number(obj_crop); ++i;)
	{
	    crop[i] = instance_find(obj_crop,i);
		if (crop[i].watered) {
			if (crop[i].index < sprite_get_number(spr_parsnip) - 1) {
				crop[i].index++;
			}
			crop[i].watered = false;
		}
		else {
			instance_destroy(crop[i].id);
			i--;
		}
	}
	for (var i = 0; i < instance_number(obj_ground); ++i;)
	{
	    ground[i] = instance_find(obj_ground,i);
		if (ground[i].index == 10) {
			ground[i].index = 9;
		}
	}
	show_debug_message(obj_gameManager.day);
}
