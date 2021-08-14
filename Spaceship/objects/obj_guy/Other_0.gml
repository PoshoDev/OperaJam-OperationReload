
if (throwables <= 0) {
    if (g.guys < 7) {
        instance_create_depth(init_left, room_height, -1, obj_guy);
        instance_create_depth(init_right, room_height, -1, obj_guy);
        rescale(obj_guy, 12);
    }
    
    g.guys--;
    with self instance_destroy();
}
