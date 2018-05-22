/// @description Movements

if (movements_disabled) {
	return;
}

// Handle Keyboard inputs
key_left = keyboard_check(ord("A")); // 1 if held down, 0 if not
key_right = keyboard_check(ord("D")); // 1 if held down, 0 if not
key_jump = keyboard_check_pressed(vk_space); // 1 if just pressed, 0 if not
key_bark = mouse_check_button(mb_left);
key_sit = keyboard_check(ord("S"));
key_idle = keyboard_check(ord("W"));

bark_timer = (bark_timer > 0) ? bark_timer -1 : bark_timer;
if (key_idle) { // Stand back up from sitting
	idle_count = 0;
}

// Update horizontal velocity
x_direction = key_right - key_left; // 1 if moving forward, -1 if moving backwards

if(place_meeting(x, y+1, obj_slippery)) {
	x_velocity = ((x_direction * x_spd) + (x_velocity * obj_slippery.mu)) / (obj_slippery.mu + 1);
} else{
	x_velocity = x_direction * x_spd;	
}

if(y_velocity > 0 && place_meeting(x, y+y_velocity, obj_ground)) {
	audio_sound_pitch(snd_land, random_range(.9,1.1));
	audio_play_sound(snd_land, 1, false);
}

y_velocity -= grav;
sprite_index = (x_direction != 0) ? spr_dakota_walk : spr_dakota_idle;

if (place_meeting(x, y+1, obj_ground) && key_jump) {
	y_velocity -= y_spd;
	audio_sound_pitch(snd_jump, random_range(.8,1));
	audio_play_sound(snd_jump, 1, false);
}


if (place_meeting(x+x_velocity, y, obj_ground)) {
	while(!place_meeting(x+sign(x_velocity), y, obj_ground)) {
			x+=sign(x_velocity); 
	}
	x_velocity = 0;
}

if (place_meeting(x, y+y_velocity, obj_ground)) {
	while(!place_meeting(x, y+sign(y_velocity), obj_ground)) {
			y+=sign(y_velocity); 
	}
	y_velocity = 0;
}

if (y_velocity > 0) {
	sprite_index = spr_dakota_fall;
} else if (y_velocity < 0) {
	sprite_index = spr_dakota_jump;
}

// TODO: Make sprites for barking while jumping, falling, and walking. Set accordingly
if (key_bark) {
	// TODO: When we have the bark animations for ^, then we can use this one again
	//sprite_index = spr_dakota_bark_idle;
	
	if (bark_timer == 0) {
		// TODO: add direction of bark
		bark_timer = bark_cooldown;
		var instance = instance_create_layer(x, y, "DakotaLayer", obj_bark);
		instance.image_xscale = -image_xscale;
		instance.speed = instance.spd * instance.image_xscale;
	}
	
	idle_count = 0;
} 

// Sit if idle for idle_threshold
idle_count = (x_direction == 0 && y_velocity == 0) ? idle_count + 1 : 0;
if(idle_count >= idle_threshold || (idle_count > 0 && key_sit)) {
	idle_count = idle_threshold;
	sprite_index = spr_dakota_sit;
}

// Make noise
if(place_meeting(x, y+1, obj_ground) && x_velocity != 0 && walk_sound) { // grounded and walking
	walk_sound = false;
	audio_sound_pitch(snd_walk, random_range(.9,1.1));
	audio_play_sound(snd_walk, 1, false);
	alarm[0] = 25;
}

// Update position
x += x_velocity;
y += y_velocity;

if(x_direction != 0) {
	image_xscale = -x_direction;
}

if(y > room_height + 10 && alarm[1] == -1) {
	audio_sound_pitch(snd_bark, 2);
	audio_play_sound(snd_bark, 1, false);
	alarm[1] = 30;
}