/// @description Insert description here
// You can write your code in this editor
if (keyboard_check(vk_left)) {
	x = x - 5;
}
if (keyboard_check(vk_right)) {
	x = x + 5;
}
if (keyboard_check_pressed(vk_space)) {
	var inst = instance_create_layer(x, y, "Instances", obj_ad_bullet);
	inst.direction = image_angle;
}