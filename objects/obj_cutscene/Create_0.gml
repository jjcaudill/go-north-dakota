/// @description Set variables

whole_text = ""; // Whole string we want to write to the screen
shown_text = ""; // Characters shown on the screen

current_letter = 0;
next_line = 0;

time_pass = 0;
start_moving = 200;
line_pause_time = 100;

// Dialogue not defined in interface, define in child objects
//dialogue[0] = "Text";
//dialogue[1] = "Goes";
//dialogue[2] = "Here";

dakota_instance = instance_find(obj_dakota, 0);
dakota_instance.ignore_user_input = true;
dakota_instance.x_spd = 3;