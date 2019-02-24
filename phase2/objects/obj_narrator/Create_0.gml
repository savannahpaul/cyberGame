/// @description creation
visible = false;
text = ds_list_create();
ds_list_add(text, "The adware secretly installed ransomware!!\n Ransomware is an attack that encrypts all the files on a computer");
ds_list_add(text, "This makes the computer useless until the owner\n pays the attacker to unencrypt all of their files");
ds_list_add(text, "In order to save everyone's computers,\nyou need to go and destroy the ransomware server!!");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;

start_game = false;
timer = 300;
alarm[0] = timer;