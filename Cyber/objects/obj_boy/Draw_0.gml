/// @description Insert description here
// You can write your code in this editor]
draw_self();

var pc;
pc = (hp / hp_max) * 100;
draw_healthbar(obj_boy.x - 200, obj_boy.y - 200, obj_boy.x - 50, obj_boy.y - 210, pc, c_black, c_red, c_lime, 0, true, true);
