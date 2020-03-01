/// @description Insert description here
// You can write your code in this editor
fade_alpha = 1;
fadeout = 0;

whole_text = ""; // Whole string we want to write to the screen
shown_text = ""; // Characters shown on the screen

current_letter = 0;
next_line = 0;

time_pass = 0;
start_moving = 200;
line_pause_time = 100;

dialogue[0] = "Dakota";
dialogue[1] = "It's way too hot here for a husky!";
dialogue[2] = "Make your way north!\nWhere it's nice and cold";
dialogue[3] = "Be sure to rest in your dog house until morning";
dialogue[4] = "And fill up with treats along the way!";

dakota_instance = instance_find(obj_dakota, 0);
dakota_instance.ignore_user_input = true;
dakota_instance.x_spd = 3;