
randomize();

draw_enable_swf_aa(true);
draw_set_swf_aa_level(1);

window_size_update();
window_resize();

repeat(100)
    instance_create_depth(irandom_range(0, room_width), irandom_range(0, room_height), 1, obj_star);
    
sprite_index = spr_otto;
image_speed = 0.25;

scale = unit/4;
image_xscale = scale;
image_yscale = scale;

x = room_width*(2/5);
y = room_height*(4/6);

g.tutorial = true;
