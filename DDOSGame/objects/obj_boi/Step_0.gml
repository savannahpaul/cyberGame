/// @description Insert description here
// You can write your code in this editor

if (obj_pregame.start_game) {
	if( keyboard_check_pressed(vk_space)){
		var bullet = instance_create_layer(x, y-50, "lay_bullets", obj_bullet);
		bullet.direction = point_direction(x, y, x + (5*image_xscale), y);	
	}

	if (kills == 3) {
			instance_create_layer(obj_computer.x, 800, "Instances", obj_firewall);
			kills = 0;
	}

	if (cooldown < 10) {
		cooldown++;
	}
}