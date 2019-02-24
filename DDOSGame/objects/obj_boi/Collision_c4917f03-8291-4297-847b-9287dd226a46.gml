/// @description Insert description here
// You can write your code in this editor

if (keyboard_check_pressed(vk_alt) and cooldown == 10) {
	other.bound = 1;
	cooldown = 0;
}