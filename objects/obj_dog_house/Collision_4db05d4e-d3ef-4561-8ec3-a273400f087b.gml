/// @description Level ends when Dakota touches

if (!disabled) {
	audio_play_sound(snd_dog_house, 1, false);
	
	// make Dakota sit and disable puppy movements.
	with(obj_dakota) {
		sprite_index = spr_dakota_sit;
		movements_disabled = true;
	}
	
	with(obj_enemy) {
		instance_destroy();
	}

	// start alarm to go to the next level.
	if (alarm[0] == -1) {
		alarm[0] = 100;
	}
}