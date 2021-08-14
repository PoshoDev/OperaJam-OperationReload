
if (projectile && obj_ship.alive) {
    obj_ship.alive = false;
    obj_global.alarm[0] = room_speed;
    play(snd_hit);
}
