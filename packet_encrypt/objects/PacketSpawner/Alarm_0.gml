/// @description create packets

current_packet++;

if (current_packet <= num_packets){
	//get equation for packet
	a = irandom(10);
	b = irandom(10);
	if (b > a){ //want a to be bigger
		temp = a;
		a = b;
		b = temp;
	}
	c = irandom(10);
	while (c == 0 or c == 1) {
		c = irandom(10);
	}
	op = irandom(3); //0 is +, 1 is -, 2 is *
	str_op = "";

	sol = 0;
	if (op == 0){
		sol = (a + b) % c;
		str_op = "+";
	} else if (op == 1){
		sol = (a - b) % c;
		str_op = "-";
	} else {
		sol = (a * b) % c;
		str_op = "*"
	}

	equation = string(a) + " " + str_op + " " + string(b) + " mod " + string(c);


	newPacket = instance_create_layer(x - irandom(100), y - irandom(100), "Instances", Packet);
	ds_map_add(packet_map, newPacket, sol);
	newPacket.equation_text = equation;
}


alarm[0] = timer;