/// @description Handle movement

// Move x direction towards Dakota
// If dakota is to the left or right of skeleton
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

y_velocity -= grav;
x_velocity = x_direction * spd;

// Collisions
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

// Update position
x += x_velocity;
y += y_velocity;

if (y > room_height + 50) {
	instance_destroy();
}