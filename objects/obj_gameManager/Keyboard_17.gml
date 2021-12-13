if (keyboard_check_pressed(ord("S"))) {
	if (currentSave == -1) {
	currentSave = saveCounter;
	saveCounter++;
	}
	game_save("save" + string(currentSave) + ".dat");
	show_debug_message("game saved");
}