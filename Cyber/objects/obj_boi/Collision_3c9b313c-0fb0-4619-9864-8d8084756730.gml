/// @description Insert description here
// You can write your code in this editor

hp--;

if (hp <= 0) {
	instance_destroy();	
	room_goto(room_dead);
}

instance_destroy(other);