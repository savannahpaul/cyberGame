/// @description handle key pressed

var name = room_get_name(room)
if(name == "level_three"){
	
	if(keyboard_check(vk_anykey) and string_length(text) < 20){
	
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

if(delete_timer != 2 ){
	delete_timer++
}
	
	
	if(keyboard_check_pressed(vk_enter)){
	 //need to send text to list of packet values to check if it is the correct answer
		password_guess = text;
		keyboard_string = "";
		text = "";
	}
} else {
	
	if(keyboard_check(vk_anykey) and string_length(text) < 20 and obj_PacketSpawner.start_game == true){
	
	text = text + string(keyboard_string);
	keyboard_string = "";
}


if (keyboard_check(vk_backspace) and !keyboard_check_pressed(vk_backspace) and delete_timer == 4 and obj_PacketSpawner.start_game == true){
	
	text = string_delete(text, string_length(text), 1);
	delete_timer = 0;
	keyboard_string = "";
}


if (keyboard_check_pressed(vk_backspace) and obj_PacketSpawner.start_game == true){
	text = string_delete(text, string_length(text), 1);
	keyboard_string = "";
	delete_timer = -4;
}

if(delete_timer != 2 ){
	delete_timer++
}
	
if(keyboard_check_pressed(vk_enter) and obj_PacketSpawner.start_game == true){
	
	//need to send text to list of packet values to check if it is the correct answer
	
	user_guess = floor(real(text));
	obj_PacketSpawner.guess = user_guess;
	
	keyboard_string = "";
	text = "";
}
}
