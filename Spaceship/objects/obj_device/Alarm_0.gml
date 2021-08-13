
if (hp) {
    hp--;
    var wifi = instance_create_depth(x, y, depth-1, obj_wifi);
    image_index++;
    wifi.owner = self;
    rescale(wifi, 12);
    alarm[0] = device_timer;
}
