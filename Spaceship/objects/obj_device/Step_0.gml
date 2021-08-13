
if (!projectile) {
    if (sucking) {
        image_blend = c_red;
        image_yscale = scale + (sin(owner.anim_sin)*(unit/256))*6;
        image_xscale = (scale*(-owner.dir)) + (owner.dir*sin(owner.anim_sin)*(unit/256))*6;
    }
    else {
        alarm[0] = -1;
        image_blend = c_white;
        image_angle = sin(owner.anim_sin2) * 8;
        x = owner.x + (unit*32*owner.dir)
        y = owner.y - (unit*32);
        if (hp) {
            image_yscale = scale + (sin(owner.anim_sin)*(unit/256));
            image_xscale = (scale*(-owner.dir)) - (owner.dir*sin(owner.anim_sin)*(unit/256));
        }
        else {
            image_yscale = scale;
            image_xscale = scale;
        }
    }
    
    sucking_prev = sucking;
}
else {
    proj_sin += pi / rspd / 2;
    y = owner.y - (sin(proj_sin) * room_height * 0.95);
    x = lerp(x, proj_target, proj_sin/32);
    image_angle += 8 * proj_dir;
}

