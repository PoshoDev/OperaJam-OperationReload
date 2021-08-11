
if (beam_dist) {
    var len = unit*28;
    draw_set_color(c_green)
    draw_rectangle(x-len, y+len, x+len, y+len+beam_dist, false);
    draw_set_color(c_white)
}

draw_self();
