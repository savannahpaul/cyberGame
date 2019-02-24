/// @description creation
visible = false;

text = ds_list_create();
ds_list_add(text, "Oh no!! When you defeated the adware, it secretly installed phase 2!");
ds_list_add(text, "You should probably go read what is in the phase 2 file...\n(press space to go back to desktop)");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;

start_game = false;
timer = 300;
alarm[0] = timer;