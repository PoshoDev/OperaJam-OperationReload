
var dist = point_distance(x, y, mouse_x, mouse_y);
if (dist > unit*80) {
    spd = unit*10;
}
else
    spd = dist/8;
    

if (beam_enable)
    spd /= 8;
    
var ang = point_direction(x, y, mouse_x, mouse_y);
x += lengthdir_x(spd, ang);
y += lengthdir_y(spd, ang);


// Beam
beam_enable = mouse_check_button(mb_left);

if (beam_enable)
    beam_dist += unit*4;
else {
    if (beam_dist > 0)
    beam_dist -= unit*16;
    if beam_dist < 0
        beam_dist = 0
}



