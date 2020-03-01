/// @description Spawn car and reset alarm

var instance = instance_create_layer(x, y, "ObjectiveLayer", choose(obj_city_car1, obj_city_car2));
instance.image_xscale = -1 * direction * image_xscale;
instance.speed = direction * random_range(min_spd, max_spd);
alarm[1] = random_range(min_rate, max_rate);