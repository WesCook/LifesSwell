/// @description Draw GUI

// Grid
for (i=0; i<max(room_width, room_height); i+=grid)
{
	draw_set_color(c_white);
	draw_set_alpha(0.2);
	draw_line(0, i, room_width, i) // Horizontal
	draw_line(i, 0, i, room_height) // Vertical
	draw_set_alpha(1);
}

// Level Hint
if (ds_map_exists(hint, room))
{
	draw_set_color(c_white);
	draw_rectangle(0, room_height - 60, room_width, room_height, false);
	draw_set_color(c_black);
	draw_text(10, room_height - 50, ds_map_find_value(hint, room));
}
