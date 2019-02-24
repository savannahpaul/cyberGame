/// @description handle key pressed

if(keyboard_check(vk_anykey) and string_length(text) < 2){
	
	text = text + string(keyboard_string);
	keyboard_string = "";
}


if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer == 4){
	
	text = string_delete(text, string_length(text), 1);
	delete_timer = 0;
	keyboard_string = "";
}


if (keyboard_check_pressed(vk_backspace)){
	text = string_delete(text, string_length(text), 1);
	keyboard_string = "";
	delete_timer = -4;
}

if(delete_timer != 2){
	delete_timer++
}

if(keyboard_check_pressed(vk_enter)){
	//need to send text to list of packet values to check if it is the correct answer
	
	user_guess = floor(real(text));
	PacketSpawner.guess = user_guess;
	
	keyboard_string = "";
	text = "";
}

