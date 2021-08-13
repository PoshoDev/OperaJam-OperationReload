
window_size_update();

draw_enable_swf_aa(true);
draw_set_swf_aa_level(1);

instance_create_depth(room_width/2, room_height/2, 0, obj_ship)

score = 0;
g.guys = 0;
var side = irandom_range(0, 1) ? -unit*16 : room_width+unit*16;
instance_create_depth(side, room_height, -1, obj_guy);

// This has to be last.
window_resize();
