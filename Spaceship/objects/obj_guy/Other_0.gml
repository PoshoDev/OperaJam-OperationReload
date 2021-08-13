
if (throwables <= 0) {
    instance_create_depth(init_left, room_height, -1, obj_guy);
    instance_create_depth(init_right, room_height, -1, obj_guy);
    rescale(obj_guy, 12);
    
    with self instance_destroy();
}
