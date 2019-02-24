// @description Insert description here

if (delay < 5){
	delay++;
}

if (enemySpawner.done and keyboard_check(vk_space) and delay == 5){
	delay = -10;
	if (text_num1 < ds_list_size(text)){
		current_text = ds_list_find_value(text, text_num1);
		text_num1++;
	} else {
		//game started
		instance_destroy();
		room_goto(level_two);
		global.last_level = level_two;
	}

}