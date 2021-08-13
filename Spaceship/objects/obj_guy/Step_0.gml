
angry_plus = angry&&(anim_bump<=0) ? 2 : 1;

switch(mode) {
    case GuyMode.walking:
        // Speed Increments
        if (speed < guy_spd_max*angry_plus)
            speed += guy_spd_inc*angry_plus;
            
        // Wölking
        if (abs(target-x) > offset)
            move_towards_point(target, room_height, speed);
        else
            mode = GuyMode.stopping;
            
        guy_walk_anim();
    break;
    
    case GuyMode.stopping:
        if (speed > 0)
            speed -= guy_spd_inc * angry_plus;
        else
            if (!angry)
                guy_dir_change();
            else if (throwables) {
                // Throwing!
                throwables--;
                mode = GuyMode.throwing;
                anim_bump = 1;
                alarm[2] = room_speed;
                device.projectile = true;
                device.proj_target = obj_ship.x;
                device.proj_sin = 0;
                device.proj_st_x = device.x + irandom_range(-unit*16, unit*16);
                device.proj_dir = device.proj_st_x<x ? -1 : 1;
                ang_target = device.proj_dir * 45;
                dir = device.proj_dir;
                image_xscale = scale * -dir;
            }
            
        guy_walk_anim();
    break;
    
    case GuyMode.gasp:
        x += sin(anim_sin*4)*unit*2; // Trembling
    break;
    
    case GuyMode.throwing:
        // Le Funny Angle
        var ad = angle_difference(image_angle, ang_target);
        image_angle -= min(abs(ad), 6) * sign(ad);
        image_xscale = scale * dir;
    break;
}

bump();

angry_plus = angry&&(anim_bump<=0) ? 2 : 1;
anim_sin += pi*2 / rspd * angry_plus;
anim_sin2 += (pi/rspd) * ((speed*100)/(guy_spd_max*100)) * angry_plus;
