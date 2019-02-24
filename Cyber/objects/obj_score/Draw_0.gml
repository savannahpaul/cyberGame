/// @description Insert description here
// You can write your code in this editor
draw_self();
text = "Packets Remaining: " + string(obj_PacketSpawner.num_packets - obj_PacketSpawner.current_packet + ds_map_size(obj_PacketSpawner.packet_map))
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x, y, text, 2, 2, 0);