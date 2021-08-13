
var dist = point_distance(x, y, mouse_x, mouse_y);
if (dist > ship_dist_max)
    spd = ship_spd_max;
else
    spd = dist/8;
    
if (beam_enable)
    spd /= 8;
    
var ang = point_direction(x, y, mouse_x, mouse_y);
x += lengthdir_x(spd, ang);
y += lengthdir_y(spd, ang);

dir = mouse_x<x ? -1 : 1;

// Le Funny Angle
var ang_target = -dir * 45 * (spd/ship_spd_max);
var ad = angle_difference(image_angle, ang_target);
image_angle -= min(abs(ad), 6) * sign(ad);


// Beam
beam_enable = mouse_check_button(mb_left);

if (beam_enable) {
    beam_dist += ship_beam_inc;
    if ((y+beam_dist) > g.win_h)
        beam_dist = g.win_h - y;
        
    beam_last = beam_dist;
    beam_frame = 1;
}
else {
    if (beam_dist > 0)
        beam_dist -= ship_beam_inc*2;
    if (beam_dist < 0)
        beam_dist = 0;
        
    if (beam_frame > 0)
        beam_frame -= 0.05;
}

anim_sin += pi*2 / rspd;
bump();

// Sprite
if (anim_bump > 0)
    otto_index = OttoSpr.yay;
else if (beam_enable)
    otto_index = OttoSpr.suck;
else if (dir < 0)
    otto_index = OttoSpr.left;
else
    otto_index = OttoSpr.right;
