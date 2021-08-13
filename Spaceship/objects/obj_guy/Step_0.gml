
switch(mode) {
    case GuyMode.walking:
        if (speed < guy_spd_max)
            speed += guy_spd_inc;
            
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