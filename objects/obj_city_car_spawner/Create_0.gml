/// @description Setting variables
hp = 0; // can be overridden, for invincible use 0

// speed of car being spawned
min_spd = 15;
max_spd = 20;

// intervals for cars to spawn
min_rate = 150;
max_rate = 300;

alarm[1] = random_range(min_rate, max_rate);

// Direction variable will default to going right with value of 1
// if you want it to go left use value of -1