
// The Beam!
if (beam_dist) {
    // Sin
    beam_sin += (pi*2) / 30;
    if (beam_sin >= (pi*2))
        beam_sin = 0;
    var plus = sin(beam_sin) * unit * 2;
    
    // General Length
    var len = unit*28;
    
    // When Closing
    var minus = 0;
    if (!beam_enable)
        minus = -lerp(len+plus, 0, beam_frame);
    
    // Actual Drawing
    draw_set_color(c_green)
    draw_rectangle(x-len-plus-minus, y+len, x+len+plus+minus, y+len+beam_dist, false);
    draw_set_color(c_white)
}

draw_self();
