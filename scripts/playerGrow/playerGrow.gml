// Release keys to add extra delay
keyboard_key_release(vk_left);
keyboard_key_release(vk_right);
keyboard_key_release(vk_up);
keyboard_key_release(vk_down);

// Find walls
var wallUp = (collision_rectangle(x, y - objController.grid, x + (size * objController.grid) - 1, y - objController.grid, objWall, false, true)) ? true : false;
var wallDown = (collision_rectangle(x, y + size * objController.grid, x + (size * objController.grid) - 1, y + size * objController.grid, objWall, false, true)) ? true : false;
var wallLeft = (collision_rectangle(x - objController.grid, y, x - objController.grid, y + (size * objController.grid) - 1, objWall, false, true)) ? true : false;
var wallRight = (collision_rectangle(x + size * objController.grid, y, x + size * objController.grid, y + (size * objController.grid) - 1, objWall, false, true)) ? true : false;

// Update position

// Main axis
// Grow "towards" strawberry
if (lastDirection == "right")
	x -= objController.grid;
if (lastDirection == "down")
	y -= objController.grid;

// Cross axis
// Avoid walls to prevent squishing
if ((lastDirection == "left" || lastDirection == "right") && wallDown)
	y -= objController.grid;
if ((lastDirection == "up" || lastDirection == "down") && wallRight)
	x -= objController.grid;

// Grow
size++;
