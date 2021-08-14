
if (gameover) {
    with (all)
        instance_destroy();
        
    instance_create_depth(0, 0, 0, obj_global);
    with self instance_destroy();
    play(snd_otto);
}