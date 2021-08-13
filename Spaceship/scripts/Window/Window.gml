function window_resize(){
    // Variables
    window_size_update();
    
    // Space
    room_width = g.win_w;
    room_height = g.win_h;
    window_set_size(g.win_w, g.win_h);
    surface_resize(application_surface, g.win_w, g.win_h);
    
    // Objects
    rescale(obj_ship, 12);
    rescale(obj_guy, 12);
    if (instance_exists(obj_ship))
        with (obj_ship) {
            image_xscale = unit/12;
            image_yscale = unit/12;
        }
        
    if (instance_exists(obj_guy))
        with (obj_guy) {
            image_xscale = unit/12;
            image_yscale = unit/12;
        }
}

function window_check_resize(){
    if (browser_width!=g.win_w || browser_height!=g.win_h)
        window_resize();
}

function window_size_update(){
    if (os_browser == browser_not_a_browser) {
        g.win_w = window_get_width();
        g.win_h = window_get_height();
    }
    else {
        g.win_w = browser_width;
        g.win_h = browser_height;
    }
}

function rescale(obj, amount){
    if (instance_exists(obj))
        with (obj) {
            scale = unit/amount;
            image_xscale = scale;
            image_yscale = scale;
        }
}

