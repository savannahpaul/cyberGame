/// @description Insert description here
// You can write your code in this editor
if(!done and start and enemy_count < MAX_ENEMIES){
	instance_create_layer(random(room_width),random(room_height),"lay_enemy", obj_virus);
	enemy_count++;
}
//Decrease time between spawns
timer = timer-timer_dec;

//Reset alarm
alarm[0] = timer;