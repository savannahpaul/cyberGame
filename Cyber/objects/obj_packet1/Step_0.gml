/// @description Insert description here
// You can write your code in this editor


x += xstep;
y += ystep;


if (hp <= 0) {
	obj_boi.kills++;
	instance_destroy();
}