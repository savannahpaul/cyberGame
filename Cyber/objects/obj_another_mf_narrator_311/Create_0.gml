/// @description creation
text = ds_list_create();
ds_list_add(text, "Good job! You made it to the attakers computer!");
ds_list_add(text, "You should take a look around, ");
ds_list_add(text, "Now go use it to read about phase 2!");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;
visible = false;
start = false;