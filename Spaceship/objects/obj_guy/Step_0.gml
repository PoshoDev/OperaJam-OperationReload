
switch(mode) {
    case GuyMode.walking:
        // Speed Increments
        if (speed < guy_spd_max)
            speed += guy_spd_inc;
            
        // Wölking
        if (abs(target-x) > offset)
            move_towards_point(target, room_height, speed);
        else
            mode = GuyMode.stopping;
    break;
    
    case GuyMode.stopping:
        if (speed > 0) {
            speed -= guy_spd_inc;
        }
        else {
            target = irandom_range(offset, room_width-offset);
            mode = GuyMode.walking;
        }
    
    break;
}

// Animations' Bumpitty
anim_sin += pi*2 / 30;
if (anim_sin >= (pi*2))
    anim_sin = 0;
image_yscale = scale + sin(anim_sin) * unit/256 * speed;
        