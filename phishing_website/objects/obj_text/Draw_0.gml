/// @description Insert description here
// You can write your code in this editor
draw_self();

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
display_text = text + string(num_left);
draw_text_transformed(x, y, display_text, 2, 2, 0);

