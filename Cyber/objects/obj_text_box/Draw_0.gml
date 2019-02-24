/// @description draw the text
draw_self();

draw_set_color(c_black);
draw_set_halign(fa_center);
draw_set_valign(fa_middle);

var name = room_get_name(room)
if(name == "level_three"){
	draw_text_transformed(x, y, text, 1, 1, 0);
} else{
	draw_text_transformed(x, y, text, 4, 4, 0);
}

if(password_guess == "githacked"){
		room_goto(room_fileLocked);
}
else if(password_guess != ""){
		text_out = "Wrong! Haha!";
		draw_set_color(c_white);
		draw_set_halign(fa_center);
		draw_set_valign(fa_middle);
		draw_text_transformed(x, y-40, text_out, 1, 1, 0);	
}

