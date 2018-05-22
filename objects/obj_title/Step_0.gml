/// @description Slowly Fade in
image_alpha = min(image_alpha + spd, 1);

// Handle current_code
if (current_code == konami_code) {
	// TODO: IT WORKS, DO KONAMI CODE TYPE FUN EASTER EGG STUFF
	instance_create_layer(room_width/2, room_height/2, "Instances", obj_arctic_snowman);
}