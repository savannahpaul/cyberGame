/// @description creation
text = ds_list_create();
ds_list_add(text, "Now you need to send the fake website to the attackers");
ds_list_add(text, "The internet is full of attackers, you want to make sure\n nobody is spying on you when you send your message!")
ds_list_add(text, "Encryption makes sure that nobody can read your message\n unless they have a secret key, or password");
ds_list_add(text, "A new, special kind of math is used in encryption:\n modular math");
ds_list_add(text, "A mod is equal to the remainder when you divide 2 numbers.");
ds_list_add(text, "For example, 5 mod 2 = 1, because the remainder \n when you divide 5 by 2 is 1");
ds_list_add(text, "Calculate all of the mods before the your packets get sent\n through the internet to encrypt your message!");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;

start_game = false;