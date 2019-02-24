/// @description Insert description here
// You can write your code in this editor

lane = irandom(9);

if (obj_pregame.start_game) {
	if (lane == 0) {
		newPacket = instance_create_layer(1600, 150, "Instances", obj_packet);	
	} else if (lane == 1) {
		newPacket = instance_create_layer(1600, 300, "Instances", obj_packet);
	} else if (lane == 2) {
		newPacket = instance_create_layer(1600, 450, "Instances", obj_packet);
	} else if (lane == 3) {
		newPacket = instance_create_layer(1600, 600, "Instances", obj_packet);
	} else if (lane == 4) {
		newPacket = instance_create_layer(1600, 750, "Instances", obj_packet);
	} else if (lane == 5) {
		newPacket = instance_create_layer(0, 750, "Instances", obj_packet);
	} else if (lane == 6) {
		newPacket = instance_create_layer(0, 600, "Instances", obj_packet);
	} else if (lane == 7) {
		newPacket = instance_create_layer(0, 450, "Instances", obj_packet);
	} else if (lane == 8) {
		newPacket = instance_create_layer(0, 300, "Instances", obj_packet);
	} else if (lane == 9) {
		newPacket = instance_create_layer(0, 150, "Instances", obj_packet);
	} 
}


alarm[0] = timer-obj_boi.num_firewalls*15;