// Release keys to add extra delay
keyboard_key_release(vk_left);
keyboard_key_release(vk_right);
keyboard_key_release(vk_up);
keyboard_key_release(vk_down);

// Main axis
// Shrinks "towards" blueberry
if (lastDirection == "right")
	x += objController.grid;
if (lastDirection == "down")
	y += objController.grid;

// Shrink
size--;

// Poofed to nothing
if (size <= 0)
	die();
