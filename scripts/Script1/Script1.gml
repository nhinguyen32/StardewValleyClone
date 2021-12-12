// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function NextDay(){
	obj_gameManager.day++;
	for (var i = 0; i < instance_number(obj_crop); ++i;)
	{
	    crop[i] = instance_find(obj_crop,i);
		crop[i].NextDay();
	}
	for (var i = 0; i < instance_number(obj_ground); ++i;)
	{
	    ground[i] = instance_find(obj_ground,i);
		ground[i].NextDay();
	}
	show_debug_message(obj_gameManager.day);
}
