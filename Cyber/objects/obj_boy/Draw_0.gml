/// @description Insert description here
// You can write your code in this editor]
draw_self();

var pc;
pc = (hp / hp_max) * 100;
draw_healthbar(150, 50, 300, 55, pc, c_black, c_red, c_lime, 0, true, true);
