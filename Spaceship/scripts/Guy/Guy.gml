function guy_set_sprite() {
    return choose(  spr_citizen_a_1,
                    spr_citizen_b_1,
                    spr_citizen_c_1,
                    spr_citizen_d_1
    );
}

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
    
    // Overall Direction
    if (mode == GuyMode.walking)
        image_xscale = scale * -dir;
}

function bump() {
    if (anim_bump > 0) {
        image_yscale = scale - cos(anim_sin*2) * (unit/32);
        anim_bump -= 1/rspd*3;
    }
    if (anim_bump<=0 && anim_bump!=-1) {
        image_yscale = scale;
        anim_bump = -1;
    }
}