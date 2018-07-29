// Timing check
if (!canMove)
	return;

// Collision check
for (var i=0; i<size*objController.grid; i+=objController.grid)
	if (position_meeting(x + i, y - objController.grid, objWall))
		return;

// Move
y -= objController.grid;
lastDirection = "up";
canMove = false;
alarm_set(0, 3); // Allow movement in three ticks
playerUpdate();
