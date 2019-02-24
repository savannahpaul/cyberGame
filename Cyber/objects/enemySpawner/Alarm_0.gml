/// @description Insert description here
// You can write your code in this editor

instance_create_layer(random(room_width),random(room_height),"lay_enemy", obj_virus);

//Decrease time between spawns
timer = timer-timer_dec;

//Reset alarm
alarm[0] = timer;