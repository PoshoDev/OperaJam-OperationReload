
var dist = point_distance(x, y, mouse_x, mouse_y);
if (dist > unit*80)
    spd = unit*10;
else
    spd = dist/8;
    
if (beam_enable)
    spd /= 8;
    
var ang = point_direction(x, y, mouse_x, mouse_y);
x += lengthdir_x(spd, ang);
y += lengthdir_y(spd, ang);


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
