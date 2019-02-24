/// @description Insert description here
// You can write your code in this editor

text = ds_list_create();

ds_list_add(text, "You have to surf the web and find the Hacker!\nWatch out for unsecure connections along the way.\nHackers can use these to steal your information!\n");
ds_list_add(text, "When surfing the web check to make sure the url\nstarts with https showing that it is secure.\n");
ds_list_add(text, "Visit the secure websites (https),\nand avoid the unsecure websites (http) \nto find the hacker.\nPress space to begin.");

text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;