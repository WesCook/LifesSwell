if (room != room_last)
{
	// Release keys before next level
	keyboard_key_release(vk_left);
	keyboard_key_release(vk_right);
	keyboard_key_release(vk_up);
	keyboard_key_release(vk_down);

	// Next level
	room_goto_next();
}
else
{
	// Final level
	ds_map_set(objController.hint, room, "I ran out of rooms in the free version of GameMaker, so I guess you win.  Congratulations!");
}
