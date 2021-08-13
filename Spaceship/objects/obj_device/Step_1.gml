
if (sucking) {
    image_blend = c_red;
    image_yscale = scale + (sin(owner.anim_sin)*(unit/256))*6;
    image_xscale = (scale*(-owner.dir)) + (owner.dir*sin(owner.anim_sin)*(unit/256))*6;
}
else {
    alarm[0] = -1;
    image_blend = c_white;
    image_angle = sin(owner.anim_sin2) * 8;
    image_yscale = scale + (sin(owner.anim_sin)*(unit/256));
    image_xscale = (scale*(-owner.dir)) - (owner.dir*sin(owner.anim_sin)*(unit/256));
    x = owner.x + (unit*32*owner.dir)
    y = owner.y - (unit*32);
}