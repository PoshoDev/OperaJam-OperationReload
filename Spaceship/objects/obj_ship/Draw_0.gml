
if (alive) {
    // The Beam!
    if (beam_dist) {
        // Sin
        beam_sin += (pi*2) / rspd;
        if (beam_sin >= (pi*2))
            beam_sin = 0;
        var plus = sin(beam_sin) * unit * 4;
        
        // General Length
        var len = unit*28;
        
        // When Closing
        var minus = 0;
        if (!beam_enable)
            minus = -lerp(len+plus, 0, beam_frame);
            
        // Rectangle Vars
        var x1 = x-len-plus;
        var y1 = y;
        var x2 = x+len+plus;
        var y2 = y+len+beam_dist;
        
        // Actual Drawing
        draw_set_color(c_green)
        draw_rectangle(x1-minus, y1, x2+minus, y2, false);
        draw_set_color(c_white)
        
        // Collision?
        with (obj_device)
            sucking = false;
        var list = ds_list_create();
        var num = collision_rectangle_list(x1, y1, x2, y2, obj_device, false, false, list, false);
        if (num)
            for (var i=0; i<num; i++)
                with(list[|i]) {
                    if (!owner.angry) {
                        sucking = true;
                        if (!sucking_prev)
                            alarm[0] = device_timer;
                        if (owner.mode != GuyMode.gasp)
                            with (owner) {
                                mode =          GuyMode.gasp;
                                play3(snd_gasp_1, snd_gasp_2, snd_gasp_3);
                                image_index =   GuySpr.gasp;
                                speed =         0;
                                image_angle =   15 * dir;
                                anim_bump =     1;
                                anim_sin =      0;
                                anim_sin2 =     0;
                                alarm[1] =      device_timer*2;
                            }
                    }
            }
        ds_list_destroy(list);
    }
}

draw_sprite_ext(spr_ship_otto, otto_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
draw_self();