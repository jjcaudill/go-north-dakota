/// @description Shoot! Stationary

// Face dakota
x_direction = 0;
var x_dakota_pos = 0;
with(obj_dakota) {
	x_dakota_pos = x;	
}

if(x_dakota_pos < x) { // left
	x_direction = -1;
} else { // right
	x_direction = 1;
}
image_xscale = x_direction;

// Spawn snowball going towards dakota
count++;
if(count >= cooldown) {
	count = 0;
	// Spawn a moving snowball
	var instance = instance_create_layer(x, y-50, "ObjectiveLayer", obj_arctic_snowball);
	instance.dir = -image_xscale;
	instance.speed = -instance.spd * -image_xscale;
}