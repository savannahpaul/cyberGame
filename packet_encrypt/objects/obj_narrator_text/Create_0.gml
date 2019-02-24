/// @description creation
text = ds_list_create();
ds_list_add(text, "Now we need to send the fake website to the attackers");
ds_list_add(text, "We want to make sure nobody can read our message as it's sent over the internet\n otherwise anyone could spy on us!");
ds_list_add(text, "To do this, we will encrypt our message. Encryption makes sure that nobody can read our message unless they have a secret key, or password");
ds_list_add(text, "explain mod arith");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;