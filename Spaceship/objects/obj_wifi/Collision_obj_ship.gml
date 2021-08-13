
if (alive) {
    score++;
    owner.owner.timer[1] = device_timer*2;
    obj_ship.anim_bump = 1;
    with self instance_destroy();
}
