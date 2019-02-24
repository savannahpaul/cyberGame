/// @description Insert description here
// You can write your code in this editor


text1 = "You have to surf the web and find the Hacker!";
text2 = "Visit the secure websites (https),";
text3 = "avoid the unsecure websites (http).";
text4 = "Press space to begin.";

if (!game_start) {
	draw_self();

	draw_set_color(c_black);
	draw_set_halign(fa_center);
	draw_set_valign(fa_middle);

	draw_text_transformed(x,y,text1,2,2,0);
	draw_text_transformed(x,y+30,text2,2,2,0);
	draw_text_transformed(x,y+60,text3,2,2,0);
	draw_text_transformed(x,y+90,text4,2,2,0);
}