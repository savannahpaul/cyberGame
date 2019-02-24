/// @description Insert description here
// You can write your code in this editor
timer = 400;		//duration between spawns (frames)
timer_dec = 29;		//amount to reduce from duration each spawn
alarm[0] = timer;	//set alarm to trigger spawn

MAX_ENEMIES = 8;
current_killed = 0;
enemy_count = 0;
done = false;
start = false;
current_instance = "";