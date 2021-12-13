gameIsPaused = !gameIsPaused;
if (!gameIsPaused) {
	instance_activate_all();
	surface_free(paused_surf);
	paused_surf = -1;
}
if (gameIsPaused) {
	alarm[0]++;
    alarm[1]++;
}
show_debug_message(gameIsPaused?"game is paused":"game is playing");
