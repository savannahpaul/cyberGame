/// @description Insert description here
// You can write your code in this editor
image_angle += 1;

//Move towards player
if (instance_exists(obj_boy)){
	move_towards_point(obj_boy.x,obj_boy.y, spd);
}

if ((randomness % 140) == 0) {
	var inst = instance_create_layer(x, y, "lay_enemy", obj_ad);
	inst.direction = point_direction(x,y,obj_boy.x,obj_boy.y);

	if(index == 0){
		inst.sprite_index = spr_ad;
		index++;
	} else if (index == 1) {
		inst.sprite_index = spr_ad_mcaffe;
		index++;
	} else {
		inst.sprite_index = spr_adCongrats;
		index = 0;
	}
}

if(hp == 0){
	instance_destroy();
	enemySpawner.current_killed++;
}

randomness++;