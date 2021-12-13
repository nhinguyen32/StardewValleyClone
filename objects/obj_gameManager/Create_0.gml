day = 1;
gold = 100;

var ground_width = obj_ground.sprite_width;
var ground_height = obj_ground.sprite_height;
for (var row = 0; row < room_width; row += ground_width) {
	for (var col = 0; col < room_height; col += ground_height) {
		instance_create_layer(row, col, "Ground", obj_ground);
	}
}

// Play music based on Room
switch room {
	case Gamestart: {
		audio_play_sound(snd_townBGM,1,1);
		}; break;
	case Gameplay: {
		audio_play_sound(snd_townBGM,1,1);
		audio_play_sound(snd_countryAmbience,1,1);
		}; break;
	}