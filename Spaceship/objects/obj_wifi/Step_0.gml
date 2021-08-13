
if (speed < wifi_spd_max)
    speed += wifi_spd_inc;
    
move_towards_point(obj_ship.x, obj_ship.y, speed);