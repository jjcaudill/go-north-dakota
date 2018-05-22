/// @description Start the bark
audio_sound_pitch(snd_bark, random_range(.8,1.1));
audio_play_sound(snd_bark, 1, false);
image_xscale = 1;
spd = 7;
alarm[0] = 25; // how long until disappear animation
alarm[1] = 30; // how long until destoryed