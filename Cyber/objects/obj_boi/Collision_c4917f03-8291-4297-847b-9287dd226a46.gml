/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_alt)) {
	other.bound = 1;
}

if (keyboard_check_released(vk_alt)) {
	other.bound = 0;
}
