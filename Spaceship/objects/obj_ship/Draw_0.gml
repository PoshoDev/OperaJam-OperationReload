
// The Beam!
if (beam_dist) {
    // Sin
    beam_sin += (pi*2) / rspd;
    if (beam_sin >= (pi*2))
        beam_sin = 0;
    var plus = sin(beam_sin) * unit * 2;
    
    // General Length
    var len = unit*28;
    
    // When Closing
    var minus = 0;
    if (!beam_enable)
        minus = -lerp(len+plus, 0, beam_frame);
        
    // Rectangle Vars
    var x1 = x-len-plus-minus;
    var y1 = y+len;
    var x2 = x+len+plus+minus;
    var y2 = y+len+beam_dist;
    
    // Actual Drawing
    draw_set_color(c_green)
    draw_rectangle(x1, y1, x2, y2, false);
    draw_set_color(c_white)
    
    // Collision?
    with (obj_device)
        sucking = false;
    var list = ds_list_create();
    var num = collision_rectangle_list(x1, y1, x2, y2, obj_device, false, false, list, false);
    if (num)
        for (var i=0; i<num; i++)
            list[|i].sucking = true;
    ds_list_destroy(list);
}

draw_self();
