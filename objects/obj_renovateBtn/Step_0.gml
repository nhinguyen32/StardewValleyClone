if (obj_player.doorInteracted && !obj_gameManager.gameIsPaused && obj_house.houseIndex != obj_house.image_number-1) {
	visible = true;
	show_debug_message(obj_house.houseIndex);
	show_debug_message(obj_house.image_number);
	currentPrice = obj_house.housePrices[obj_house.houseIndex];
}
else {
	visible = false;
}