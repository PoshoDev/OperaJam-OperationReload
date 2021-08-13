
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
            
        guy_walk_anim();
    break;
    
    case GuyMode.stopping:
        if (speed > 0)
            speed -= guy_spd_inc;
        else
            guy_dir_change();
            
        guy_walk_anim();
    break;
    
    case GuyMode.gasp:
        x += sin(anim_sin*4)*unit*2;
        if (anim_bump > 0) {
            image_yscale = scale - cos(anim_sin*2) * (unit/32);
            anim_bump -= 1/rspd*3;
        }
            
    break;
}


anim_sin += pi*2 / rspd;
anim_sin2 += (pi/rspd) * ((speed*100)/(guy_spd_max*100));
