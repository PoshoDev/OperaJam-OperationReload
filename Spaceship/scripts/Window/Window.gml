function window_resize(){
    // Variables
    g.win_w = browser_width;
    g.win_h = browser_height;
    
    // Space
    room_width = g.win_w;
    room_height = g.win_h;
    window_set_size(g.win_w, g.win_h);
    surface_resize(application_surface, g.win_w, g.win_h);
    
    // Objects
    if (instance_exists(obj_ship))
        with (obj_ship) {
            image_xscale = unit/12;
            image_yscale = unit/12;
        }
}

function window_check_resize(){
    if (browser_width!=g.win_w || browser_height!=g.win_h)
        window_resize();
}

