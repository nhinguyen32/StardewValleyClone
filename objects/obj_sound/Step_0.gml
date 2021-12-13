/// @description Insert description here
// You can write your code in this editor
if (global.isSoundOn) {
	audio_resume_all();
	image_index = 0;
}
if (!global.isSoundOn) {
	audio_pause_all();
	image_index = 1;
}