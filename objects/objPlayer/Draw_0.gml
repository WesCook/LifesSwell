/// @description Draw Player

if (size > 0)
{
	// Draw body (ghostly if dead)
	if (alive)
		draw_set_alpha(0.9);
	else
		draw_set_alpha(0.5);
	draw_set_color(colors[(max(0, size - 1)) mod array_length_1d(colors)]);
	draw_roundrect(x, y, x + size * objController.grid - 1, y + size * objController.grid - 1, false);

	///////////////
	// Draw Eyes //
	///////////////

	var eyeMid = (size * objController.grid / 2);
	var eyeSize = (size * 3);
	var eyeOffsetHorizontal = 0;
	var eyeOffsetVertical = 0;
	var eyeSeparationHorizontal = 0;
	var eyeSeparationVertical = 0;

	if (lastDirection == "left")
	{
		eyeOffsetHorizontal = size * -5.5;
		eyeSeparationVertical = size * 3.3;
	}
	if (lastDirection == "right")
	{
		eyeOffsetHorizontal = size * 5.5;
		eyeSeparationVertical = size * 3.3;
	}
	if (lastDirection == "up")
	{
		eyeOffsetVertical = size * -5.5;
		eyeSeparationHorizontal = size * 3.3;
	}
	if (lastDirection == "down")
	{
		eyeOffsetVertical = size * 5.5;
		eyeSeparationHorizontal = size * 3.3;
	}

	// Whites
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_circle(x + eyeMid + eyeOffsetHorizontal - eyeSeparationHorizontal, y + eyeMid + eyeOffsetVertical - eyeSeparationVertical, eyeSize, false);
	draw_circle(x + eyeMid + eyeOffsetHorizontal + eyeSeparationHorizontal, y + eyeMid + eyeOffsetVertical + eyeSeparationVertical, eyeSize, false);

	// Outline
	draw_set_color(c_ltgray);
	draw_set_alpha(0.4);
	draw_circle(x + eyeMid + eyeOffsetHorizontal - eyeSeparationHorizontal, y + eyeMid + eyeOffsetVertical - eyeSeparationVertical, eyeSize, true);
	draw_circle(x + eyeMid + eyeOffsetHorizontal + eyeSeparationHorizontal, y + eyeMid + eyeOffsetVertical + eyeSeparationVertical, eyeSize, true);

	// Blacks
	draw_set_color(c_black);
	draw_set_alpha(1);
	draw_circle(x + eyeMid + eyeOffsetHorizontal * 1.1 - eyeSeparationHorizontal + eyeRandomLeftHorizontal, y + eyeMid + eyeOffsetVertical * 1.1 - eyeSeparationVertical + eyeRandomLeftVertical, eyeSize / 2, false);
	draw_circle(x + eyeMid + eyeOffsetHorizontal * 1.1 + eyeSeparationHorizontal + eyeRandomRightHorizontal, y + eyeMid + eyeOffsetVertical * 1.1 + eyeSeparationVertical + eyeRandomRightVertical, eyeSize / 2, false);
}
