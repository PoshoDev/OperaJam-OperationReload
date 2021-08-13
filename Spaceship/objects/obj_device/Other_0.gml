
if (projectile) {
    with (owner) {
        mode = GuyMode.walking;
        if (x < room_width/2)
            target = -offset;
        else
            target = room_width + offset;
        dir = target < x ? -1 : 1;
        anim_bump = 1;
    }
    
    with self instance_destroy();
}
