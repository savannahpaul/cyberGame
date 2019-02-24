/// @description Insert description here
// You can write your code in this editor

//-----------------------------------------------------------------
if(hp <= 0){
	sprite_index = spr_boyDie;
	room_goto(room_dead);
}

var name = room_get_name(room)
if(name == "room_final" or name == "level_one"){
	if(hp <= 3) {
		hp 	+= .002;
	}
	if(name == "room_final"){
	max_jumps = 3;
	}
}

horizontalSpeed = walkSpeed;
if( keyboard_check(vk_left) ){ // move left
	sprite_index = spr_boyWalk;
	image_xscale = -1;
	/*if( place_meeting(x-horizontalSpeed, y, obj_platform) ){ // is there a collision
		// yes: don't move there, move as close as possible
		while( !place_meeting(x-1, y, obj_platform) ){
			x=x-1;
		}
		horizontalSpeed = 0;
	}*/
	x = x - horizontalSpeed;
	
}else if( keyboard_check(vk_right) ){ // move right
	
	sprite_index = spr_boyWalk;
	image_xscale = 1;
	/*if( place_meeting(x+horizontalSpeed, y, obj_platform) ){ // is there a collision
		// yes, don't move there, move as close as possible
		while( !place_meeting(x+1, y, obj_platform) ){
			x=x+1;
		}
		horizontalSpeed = 0;
	}*/
	x = x + horizontalSpeed;
	
}else{ // not walking, stop animation
	sprite_index = spr_boyIdle;
}

// Jumping
// only jump from ground: place_meeting(x, y+1, obj_platform)
// double jump logic: on the ground? -> set jump count to max
// if jump, jump and jump -= 1
if( place_meeting(x, y+1, obj_platform)){ // on floor, reset jumps
	jumps = max_jumps;
}
if( keyboard_check_pressed(vk_up) && jumps > 0){ // pressed is needed to keep from depleting all
	verticalSpeed = jumpVal;
	jumps--;
}else if( place_meeting(x, y, obj_platform) ){ // on ground not jumping
	verticalSpeed = 0;
}

// Falling
verticalSpeed = verticalSpeed + grav
if( place_meeting(x, y+verticalSpeed, obj_platform) ){ // is there a collision?
	// yes, don't fall completely, fall to floor 
	while( !place_meeting(x, y+sign(verticalSpeed), obj_platform) ){
		y=y+sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

if(!(place_meeting(x, y + 1, obj_platform))){
	sprite_index = spr_boyJump;
}

if( keyboard_check_pressed(vk_space)){
	var bullet = instance_create_layer(x, y-50, "lay_bullets", obj_bullet);
	bullet.direction = point_direction(x, y, x + (5*image_xscale), y);	
}