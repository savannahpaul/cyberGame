/// @description creation
text = ds_list_create();
ds_list_add(text, "Good job defending against the DDoS,\n your computer is now safe behind the firewall.");
ds_list_add(text, "You need to find a way to get that password,\nIt's time for you to go on the offensive and make your own attack!");
ds_list_add(text, "A phishing attack is a common way to get user logins.\n This attack uses a fake website to steal the password.")
ds_list_add(text, "The hacker group already has a website, \nthis will be shown on the left.");
ds_list_add(text, "You need to make a new website that looks the same,\n so that we can trick one of the attackers into using it");
ds_list_add(text, "When the attacker uses your fake website,\n it will collect his password");
ds_list_add(text, "Your website must be exactly similar\n to the attackers, besides the url");
ds_list_add(text, "Click on all of things that are different in\n your website (right), to make it as similar as possible!");
text_num = 1;

current_text = ds_list_find_value(text, 0);
delay = 5;

start_game = false;