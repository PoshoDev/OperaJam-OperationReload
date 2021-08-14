
draw_sprite_ext(spr_background, 0, x, y, unit/4, unit/4, image_angle, image_blend, image_alpha);

if (g.tutorial) {
    draw_sprite_ext(spr_tutorial_a, image_index, room_width*(1/5)+shdw, room_height*(1.5/5)+shdw, scale, scale, image_angle, c_black, 0.9);
    draw_sprite_ext(spr_tutorial_a, image_index, room_width*(1/5), room_height*(1.5/5), scale, scale, image_angle, image_blend, image_alpha);
    
    draw_sprite_ext(spr_tutorial_b, image_index, room_width*(4/5)+shdw, room_height*(1.5/5)+shdw, scale, scale, image_angle, c_black, 0.9);
    draw_sprite_ext(spr_tutorial_b, image_index, room_width*(4/5), room_height*(1.5/5), scale, scale, image_angle, image_blend, image_alpha);
    
    draw_sprite_ext(spr_tutorial_c, image_index, obj_device.x+shdw, obj_device.y-(unit*48)+shdw, scale, scale, image_angle, c_black, 0.9);
    draw_sprite_ext(spr_tutorial_c, image_index, obj_device.x, obj_device.y-(unit*48), scale, scale, image_angle, image_blend, image_alpha);
}