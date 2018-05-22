/// @description Go to the next level.
if (room == room_last) {
	game_restart();
} else {
	room_goto_next();
}