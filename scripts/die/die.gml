with (objPlayer)
{
	alive = false;
	canMove = false;
	audio_play_sound(choose(sndHurt1, sndHurt2, sndHurt3), 0, false);
	alarm_set(0, -1); // Interupt timer to prevent movement being returned
}
