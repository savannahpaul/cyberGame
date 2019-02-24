/// @description creation
text = ds_list_create();
ds_list_add(text, "You made it to the attackers desktop!");
ds_list_add(text, "What are these folders..?\nPress the down arrow key on top of one to open");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;
