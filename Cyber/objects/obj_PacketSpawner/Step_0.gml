/// @description check guess
if (guess != -1){
	
	//need to see if guess is a solution
	//remove all objects if sol is a solution
	size = ds_map_size(packet_map);
	key = ds_map_find_first(packet_map);
	for(i = 0; i < size; i++;){
		if (ds_map_find_value(packet_map, key) == guess){
			//this sol is good
			ds_map_delete(packet_map, key)
			instance_destroy(key);
		}
		key = ds_map_find_next(packet_map, key);
	}
	
	
	
	guess = -1;
}

if(current_packet == num_packets && ds_map_size(packet_map) == 0){
	
	obj_another_mf_narrator_31.visible = true;
	obj_another_mf_narrator_31.start=true;
		
}