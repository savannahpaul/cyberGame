/// @description Insert description here
// You can write your code in this editor
will_i_spawn = irandom(60);

object_type = irandom(1);

lane_spawn = irandom(2);



if (will_i_spawn != 0) {

} else if (PreGame.game_start) {
	if (ScoreBoard.myscore >= 2000) {
		if (!instance_exists(Hacker)) {
			instance_create_depth(1600,y-175,1,Hacker);
		}
	} else {
		if (lane_spawn == 0) {
			if (object_type) {
				instance_create_depth(1600,y-250,1, Good);
			} else {
				instance_create_depth(1600,y-250,1, Bad);
			}
		} else if (lane_spawn == 1) {
			if (object_type) {
				instance_create_depth(1600,y,1, Good);
			} else {
				instance_create_depth(1600,y, 1, Bad);
			}
		} else {
			if (object_type) {
				instance_create_depth(1600,y+250,1, Good);
			} else {
				instance_create_depth(1600,y+250,1, Bad);
			}
		}
	}
}

