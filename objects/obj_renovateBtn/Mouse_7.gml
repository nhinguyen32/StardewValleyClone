if (obj_player.doorInteracted && !obj_gameManager.gameIsPaused && obj_house.houseIndex != obj_house.image_number-1) {
	if (obj_gameManager.gold >= currentPrice) {
		obj_gameManager.gold -= currentPrice;
		obj_house.houseIndex++;
	}
}