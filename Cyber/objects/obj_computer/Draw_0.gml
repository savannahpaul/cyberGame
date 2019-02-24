/// @description Insert description here
// You can write your code in this editor
draw_self();

var pc;
pc = (hp / hp_max) * 100;
draw_healthbar(obj_computer.x - 100, obj_computer.y - 50, obj_computer.x + 50, obj_computer.y - 60, pc, c_black, c_red, c_lime, 0, true, true);