// If player is touching both top and bottom of hole, exit safely
var touchingTiles = 0;
for (var i=0; i<objPlayer.size; i++) // Horizontal
	if (!instance_position(x + (i * objController.grid), y - objController.grid, objHole)) // Top check
		if (!instance_position(x + (i * objController.grid), y + (objPlayer.size * objController.grid) + 1, objHole)) // Bottom check
			touchingTiles++;
if (touchingTiles == objPlayer.size) // All tiles touching
	return true;

// If player is touching both left and right sides of hole, exit safely
var touchingTiles = 0;
for (var i=0; i<objPlayer.size; i++) // Vertical
	if (!instance_position(x - objController.grid, y + (i * objController.grid), objHole)) // Left check
		if (!instance_position(x + (objPlayer.size * objController.grid) + 1, y + (i * objController.grid), objHole)) // Right check
			touchingTiles++;
if (touchingTiles == objPlayer.size) // All tiles touching
	return true;

// Otherwise, fall in hole
return false;
