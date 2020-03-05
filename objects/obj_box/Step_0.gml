/// @description Start timer to destroy, switch to blowing up animation

if (hp == 0) {
	sprite_index = spr_box_boom;
	alarm[0] = 30;
	--hp;
}


