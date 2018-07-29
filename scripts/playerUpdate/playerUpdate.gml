// Checks for game state changes and object collisions on current tile

///////////////////
// Win Condition //
///////////////////

if (instance_number(objStrawberry) == 0 && instance_number(objBlueberry) == 0 && instance_number(objGoldenApple) == 0)
	win();


////////////////
// Collisions //
////////////////

var collisionSize = max(0, size * objController.grid - 1); // Character size in pixels

// Strawberry
var strawberry = collision_rectangle(x, y, x + collisionSize, y + collisionSize, objStrawberry, false, true);
if (strawberry)
{
	instance_destroy(strawberry);
	audio_play_sound(sndNom, 0, false);
	playerGrow();
	playerUpdate();
	return;
}

// Blueberry
var blueberry = collision_rectangle(x, y, x + collisionSize, y + collisionSize, objBlueberry, false, true);
if (blueberry)
{
	instance_destroy(blueberry);
	if (floor(random(10)) == 0)
		audio_play_sound(sndYuck, 0, false);
	else
		audio_play_sound(sndNom, 0, false);
	playerShrink();
	playerUpdate();
	return;
}

// Golden Apple
var apple = (collision_rectangle(x, y, x + collisionSize, y + collisionSize, objGoldenApple, false, true))
if (apple)
{
	instance_destroy(apple);
	win();
	playerUpdate();
	return;
}


/////////////////////
// Lose Conditions //
/////////////////////

// Fall down hole
if (collision_rectangle(x, y, x + collisionSize, y + collisionSize, objHole, false, true) && !getHoleSafety())
{
	die();
	return;
}

// Squished in wall
if (collision_rectangle(x, y, x + collisionSize, y + collisionSize, objWall, false, true))
{
	die();
	return;
}


///////////////////
// Update Values //
///////////////////

// Random googly eye offsets
eyeRandomLeftHorizontal = floor(size * -1 + random(size * 2));
eyeRandomLeftVertical = floor(size * -1 + random(size * 2));
eyeRandomRightHorizontal = floor(size * -1 + random(size * 2));
eyeRandomRightVertical = floor(size * -1 + random(size * 2));
