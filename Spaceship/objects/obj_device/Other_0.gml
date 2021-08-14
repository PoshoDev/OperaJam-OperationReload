
if ((y>room_height) && projectile && !owner.throwables) {
    with (owner) {
        mode = GuyMode.walking;
        if (x < room_width/2)
            target = init_left;
        else
            target = init_right;
        dir = target < x ? -1 : 1;
        anim_bump = 1;
        play3(snd_angry_1, snd_angry_2, snd_angry_3);
    }
    
    with self instance_destroy();
}
