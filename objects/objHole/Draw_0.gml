/// @description Draw Borders

draw_set_color(make_color_rgb(15, 15, 35));
draw_rectangle(x + marginLeft, y + marginTop , x + objController.grid - marginRight, y + objController.grid - marginBottom, false);
