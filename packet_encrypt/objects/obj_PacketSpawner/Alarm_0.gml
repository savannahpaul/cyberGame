/// @description create packets

if (start_game == true){
	current_packet++;
}

if (current_packet <= num_packets and start_game == true){
	//get equation for packet
	a = irandom(20);
	/*b = irandom(10);
	if (b > a){ //want a to be bigger
		temp = a;
		a = b;
		b = temp;
	}*/
	c = irandom(10);
	while (c == 0 or c == 1) {
		c = irandom(10);
	}
	//op = irandom(3); //0 is +, 1 is -, 2 is *
	//str_op = "";

	sol = a mod c;
	/*if (op == 0){
		sol = (a + b) % c;
		str_op = "+";
	} else if (op == 1){
		sol = (a - b) % c;
		str_op = "-";
	} else {
		sol = (a * b) % c;
		str_op = "*"
	}*/

	equation = string(a) + " mod " + string(c);


	newPacket = instance_create_layer(x - irandom(100), y - irandom(100), "Instances", obj_Packet);
	ds_map_add(packet_map, newPacket, sol);
	newPacket.equation_text = equation;
}


alarm[0] = timer;