/// @description Change alpha of sun

if (dog_house.level_complete) {
	sun_alpha = min(sun_alpha + 0.01, 1);	

} else {
	sun_alpha = max(sun_alpha - 0.005, 0);	
}