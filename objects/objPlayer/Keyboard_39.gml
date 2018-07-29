// Timing check
if (!canMove)
	return;

// Collision check
for (var i=0; i<size*objController.grid; i+=objController.grid)
	if (position_meeting(x + size * objController.grid, y + i, objWall))
		return;

// Move
x += objController.grid;
lastDirection = "right";
canMove = false;
alarm_set(0, 3); // Allow movement in three ticks
playerUpdate();
