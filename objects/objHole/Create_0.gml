/// @description Find Neighbors

margin = 4; // Pixels to subtract if edge found

// Check for edges
marginLeft = (!instance_place(x - objController.grid, y, objHole)) ? margin : 0;
marginRight = (!instance_place(x + objController.grid, y, objHole)) ? margin : 0;
marginTop = (!instance_place(x, y - objController.grid, objHole)) ? margin : 0;
marginBottom = (!instance_place(x, y + objController.grid, objHole)) ? margin : 0;
