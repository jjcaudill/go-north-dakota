/// @description Make snowball fade in

if (dir > 0) {
	image_xscale = min(1, image_xscale+.1);
} else {
	image_xscale = max(-1, image_xscale-.1);
}

