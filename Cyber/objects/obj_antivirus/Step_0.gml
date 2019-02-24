/// @description Insert description here
// You can write your code in this editor
if(time <= (max_time/2)){
	x += 2;
}
else if(time > (max_time/2) and time <= max_time){
	x -= 2;	
}
else{
	time = 0;
}
time++;

if(distance_to_object(obj_boy) <= 500){
	if((time % 20) == 0){
		var bullet = instance_create_layer(x, y, "lay_bullets", obj_enemyBullet);
		bullet.direction = point_direction(x, y, obj_boy.x, obj_boy.y);	
	}
}

if(hp == 0){
	instance_destroy();
}
