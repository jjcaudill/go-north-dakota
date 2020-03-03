/// @description Handle text

current_letter += 0.5;
shown_text = string_copy(whole_text, 1, current_letter);

if ((current_letter > string_length(shown_text) + line_pause_time) && (next_line < array_length_1d(dialogue)-1)) {
	current_letter = 0;
	next_line++;
}

whole_text = dialogue[next_line];