
image_angle = -sin(owner.anim_sin2) * 15
image_yscale = scale + sin(owner.anim_sin) * (unit/256);
image_xscale = (scale*(-owner.dir)) - (owner.dir*sin(owner.anim_sin)*(unit/256));
x = owner.x + (unit*32*owner.dir)
y = owner.y - (unit*32);

if (sucking)
    image_blend = c_red
else
    image_blend = c_white