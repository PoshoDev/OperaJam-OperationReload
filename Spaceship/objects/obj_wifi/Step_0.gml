
if (!owner.sucking) {
    alive = false;
    image_blend = c_gray;
}
    
if (speed < wifi_spd_max)
    speed += wifi_spd_inc;
        
if (alive) {
    move_towards_point(obj_ship.x, obj_ship.y, speed);
    
    var ang_target = point_direction(x, y, obj_ship.x, obj_ship.y) - 90;
}
else {
    move_towards_point(x, room_height*2, speed);
    var ang_target = point_direction(x, y, x, room_height*2) - 90;
}

// Le Funny Angle
var ad = angle_difference(image_angle, ang_target);
image_angle -= min(abs(ad), 6) * sign(ad);
