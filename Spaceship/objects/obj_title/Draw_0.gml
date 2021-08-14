
draw_sprite_ext(spr_device_b_1, 5, x-unit*160, y, scale, scale, image_angle, image_blend, image_alpha);
draw_self();

draw_set_color(c_red);
draw_set_valign(fa_middle);

draw_set_halign(fa_center);
draw_set_font(fnt_title);
draw_text(room_width*(6/8), room_height/2, "OPERATION\nRELOAD")

draw_set_halign(fa_right);
draw_set_font(fnt_score);
draw_text(room_width-unit*16, room_height-unit*16, "Click anywhere to play!")

