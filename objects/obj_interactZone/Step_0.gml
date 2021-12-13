if (obj_player.interacted) {
var collided_object_id = instance_place(x, y, obj_ground);
	if (collided_object_id != noone) {
		if (obj_player.currentTool == 1) {
			var house_id = instance_place(x, y, obj_house);
			if (house_id = noone) {
				if (collided_object_id.index < 9) {
					collided_object_id.index = 9;
				}
				else if (collided_object_id.hasCrop) {
					var crop_id = instance_place(x, y, obj_crop);
					instance_destroy(crop_id);
					collided_object_id.hasCrop = false;
				}
			}
		}
		else if (obj_player.currentTool == 2 && collided_object_id.index >= 9 && !collided_object_id.hasCrop) {
			object_set_sprite(obj_crop, spr_parsnip);
			instance_create_layer(collided_object_id.x, collided_object_id.y, "Instances", obj_crop);
			collided_object_id.hasCrop = true;
		}
		else if (obj_player.currentTool == 3 && collided_object_id.index == 9) {
			collided_object_id.index = 10;
		}
	}
	obj_player.interacted = false;
}