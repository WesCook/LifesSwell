/// @description Global Init

// Constants
grid = 20; // 2D grid size
depth = 10; // Draw grid under player

// Hints
hint = ds_map_create();
ds_map_add(hint, rmIntro, "Delicious Strawberries help you grow");
ds_map_add(hint, rmShrink, "Yucky Blueberries make you shrink");
ds_map_add(hint, rmTempted, "Press 'R' to restart");
ds_map_add(hint, rmHoleIntro, "Holes can only be crossed by straddling both sides");

// Put things in motion
randomise(); // Set random seed
audio_play_sound(sndMusic, 0, true); // Start music
