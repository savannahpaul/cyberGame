/// @description creation
text = ds_list_create();
ds_list_add(text, "Hello! Welcome to your home computer\nPress space to continue");
ds_list_add(text, "Everything is peaceful and calm on the world wide web,\n wait... is that an ad??");
ds_list_add(text, "Shoot down all the ads to survive!!");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;
