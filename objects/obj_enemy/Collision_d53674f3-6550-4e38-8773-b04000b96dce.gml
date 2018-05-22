/// @description Bark disappear, lose health
x_velocity = 0;
hp -= 1;

with(other) {
	instance_destroy();	
}

if(hp == 0) {
	instance_destroy();
	// Can add death sounds into the child objects destructor
}