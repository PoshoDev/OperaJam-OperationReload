
if (device.hp <= 0) {
    angry = true;
    image_index = GuySpr.angry;
    do {
        guy_dir_change();
    }
    until (distance_to_point(target, y) > room_width/4)
    anim_bump = 1;
}
else if (device.sucking)
    alarm[1] = device_timer*2;
else
    guy_dir_change();
