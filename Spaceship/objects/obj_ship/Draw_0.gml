
if (beam_dist) {
    beam_sin += (pi*2) / 30;
    if (beam_sin >= (pi*2))
        beam_sin = 0;
    var plus = sin(beam_sin) * unit * 2;
        
    var len = unit*28;
    draw_set_color(c_green)
    draw_rectangle(x-len-plus, y+len, x+len+plus, y+len+beam_dist, false);
    draw_set_color(c_white)
}

draw_self();
