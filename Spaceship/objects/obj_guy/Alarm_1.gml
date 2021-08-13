
if (device.hp <= 0) {
    angry = true;
    guy_dir_change();
    anim_bump = 1;
}
else
    alarm[1] = device_timer*2;

