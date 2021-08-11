
var dist = point_distance(x, y, mouse_x, mouse_y);
if (dist > unit*80) {
    spd = unit*10;
}
else
    spd = dist/8;
    
var ang = point_direction(x, y, mouse_x, mouse_y);
x += lengthdir_x(spd, ang);
y += lengthdir_y(spd, ang);



