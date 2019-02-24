/// @description Insert description here
// You can write your code in this editor
draw_self();
draw_set_color(c_white);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
var name = room_get_name(room)
if(name == "room_dead"){
	draw_text_transformed(x, y, "Play Again?", 2, 2, 0);
} else {
	draw_text_transformed(x, y, "Play", 2, 2, 0);
}