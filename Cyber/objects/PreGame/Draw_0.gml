/// @description Insert description here
if (!game_start) {
	draw_self();

	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);
	draw_text_transformed(x-25, y, current_text, 2, 2, 0);
	
}