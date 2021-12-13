if (obj_player.interacted) {
var collided_object_id = instance_place(x, y, obj_ground);
	if (collided_object_id != noone) {
		// hoeing
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
			audio_play_sound(snd_itemPutDown, 1, 0);
		}
		// planting
		else if (obj_player.currentTool == 2 && collided_object_id.index >= 9 && !collided_object_id.hasCrop) {
			object_set_sprite(obj_crop, spr_parsnip);
			var crop_id = instance_create_layer(collided_object_id.x, collided_object_id.y, "Instances", obj_crop);
			obj_gameManager.gold -= crop_id.seed_price;
			collided_object_id.hasCrop = true;
		}
		// watering
		else if (obj_player.currentTool == 3) {
			audio_play_sound(snd_water, 1, 0);
			alarm_set(0, 40);
			if (collided_object_id.index == 9) {
				collided_object_id.index = 10;
			}
		}
		// harvesting
		else if (obj_player.currentTool == 0) {
			var crop_id = instance_place(x, y, obj_crop);
			if (crop_id != noone) {
				if (crop_id.image_index == crop_id.image_number - 1) {
					audio_play_sound(snd_itemPickup, 1, 0);
					obj_gameManager.gold += crop_id.crop_price;
					instance_destroy(crop_id);
					collided_object_id.hasCrop = false;
					
				}
			}
		}
	}
	obj_player.interacted = false;
}