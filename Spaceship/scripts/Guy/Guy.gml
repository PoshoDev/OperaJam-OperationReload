function guy_dir_change() {
    mode = GuyMode.walking;
    target = irandom_range(offset, room_width-offset);
    dir = target < x ? -1 : 1;
}

function guy_walk_anim() {
    // Animation Bumpitty
    image_yscale = scale + sin(anim_sin) * (unit/256) * speed;
    
    // Animation Rotation
    image_angle = sin(anim_sin2) * 15;
}