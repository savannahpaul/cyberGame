// @description Insert description here

if (delay < 5){
	delay++;
}

if (keyboard_check(vk_space) and delay == 5){
	delay = -10;
	if (text_num < ds_list_size(text)){
		current_text = ds_list_find_value(text, text_num);
		text_num++;
	} else {
		//go back to hackers desktop
		room_goto(level_three);
		instance_destroy();		
	}

}