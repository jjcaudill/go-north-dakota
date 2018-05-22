/// @description Add key to current_code
switch(keyboard_lastkey) {
    case vk_up:
		current_code += "u";
		break;
	case vk_down:
		current_code += "d";
		break;
	case vk_left:
		current_code += "l";
		break;
	case vk_right:
		current_code += "r";
		break;
	case ord("A"):
		current_code += "a";
		break;
	case ord("B"):
		current_code += "b";
		break;
	case vk_enter:
		current_code += "e";
		break;
	default:
		current_code += "x";
		break;
}

// Check if that breaks it. if so reset
if (string_length(current_code) == 0 || 
	string_length(current_code) > string_length(konami_code) || 
	string_char_at(current_code, string_length(current_code)-1) != string_char_at(konami_code, string_length(current_code)-1)) {
	current_code = "";
}