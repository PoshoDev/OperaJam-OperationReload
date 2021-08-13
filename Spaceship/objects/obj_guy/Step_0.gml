
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
            if (!angry)
                guy_dir_change();
            else {
                mode = GuyMode.throwing;
                anim_bump = 1;
            }
            
        guy_walk_anim();
    break;
    
    case GuyMode.gasp:
        x += sin(anim_sin*4)*unit*2; // Trembling
    break;
    
    case GuyMode.throwing:
        
    break;
}

bump();

var angry_plus = angry&&(anim_bump<=0) ? 2 : 1;
anim_sin += pi*2 / rspd * angry_plus;
anim_sin2 += (pi/rspd) * ((speed*100)/(guy_spd_max*100)) * angry_plus;
