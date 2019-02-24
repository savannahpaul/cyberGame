/// @description Draw 
draw_self();

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);
draw_text_transformed(x, y + 8, header_text, 1.5, 1.3, 0);


draw_set_halign(fa_middle);
draw_set_valign(fa_center);

draw_text_transformed(x, y + 50, equation_text, 2, 2, 0);
