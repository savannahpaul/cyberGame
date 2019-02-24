/// @description Insert description here
// You can write your code in this editor

text = ds_list_create();
ds_list_add(text, "Uh oh, the hacker tracked you\nback to your computer,\nyou're under a DDoS attack!\n");
ds_list_add(text, "A DDoS attack is when\nattackers flood your computer\nwith too many messages\nfor it to handle.")
ds_list_add(text, "If too many messages are\nsent to your computer\nit will slow down\nuntil it crashes.");
ds_list_add(text, "Firewalls can sometimes\nbe setup to\nblock these attacks.");
ds_list_add(text, "Fight off the message packets\nand setup firewalls to\nstop the incoming attack!");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;

start_game = false;