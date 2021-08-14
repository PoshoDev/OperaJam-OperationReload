
if (alive) {
    score++;
    play3(snd_suck_1, snd_suck_2, snd_suck_3);
    play3(snd_yay_1, snd_yay_2, snd_yay_3);
    owner.owner.timer[1] = device_timer*2;
    obj_ship.anim_bump = 1;
    obj_ship.alarm[2] = room_speed;
    with self instance_destroy();
}
