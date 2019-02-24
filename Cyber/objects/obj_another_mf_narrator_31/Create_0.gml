/// @description creation
text = ds_list_create();
ds_list_add(text, "Congratulations, you successfully sent the website to the attackers");
ds_list_add(text, "They used the website, and the password is:\ngithacked");
ds_list_add(text, "Now go use it to read about phase 2!");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;
visible = false;
start = false;