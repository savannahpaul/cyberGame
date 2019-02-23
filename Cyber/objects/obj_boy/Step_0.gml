/// @description Insert description here
// You can write your code in this editor
/*
// Walking
if (keyboard_check(vk_left)) {
	sprite_index = spr_boyWalk;
	image_xscale = -1;
	x = x - 5;
} else if (keyboard_check(vk_right)) {
	sprite_index = spr_boyWalk;
	image_xscale = 1;
	x = x + 5;
}
else{
	sprite_index = spr_boyIdle;	
}

// Jumping
if( keyboard_check_pressed(vk_space)){ // pressed is needed to keep from depleting all
	sprite_index = spr_boyJump;
	verticalSpeed = jumpVal;
}else if( place_meeting(x, y, obj_platform) ){ // on ground not jumping
	verticalSpeed = 0;
}

// Falling
verticalSpeed = verticalSpeed + grav
if( place_meeting(x, y+verticalSpeed, obj_platform) ){ // is there a collision?
	while( !place_meeting(x, y+sign(verticalSpeed), obj_platform) ){
		y = y + sign(verticalSpeed);
	}
	verticalSpeed = 0;
}
y = y + verticalSpeed;

if(!(place_meeting(x, y + 1, obj_platform))){
	sprite_index = spr_boyJump;
}
*/
//-----------------------------------------------------------------
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
if( keyboard_check_pressed(vk_space)){ // pressed is needed to keep from depleting all
	verticalSpeed = jumpVal;
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
