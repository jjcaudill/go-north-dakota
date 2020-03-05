/// @description Animate hit, set alarm to stop animation

// Inherit the parent event
event_inherited();
if (hp > 0) {
	sprite_index = spr_box_hit;
	alarm[1] = 25;
}


