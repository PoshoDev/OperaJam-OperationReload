
if (!gameover) {
    draw_set_font(fnt_score);
    draw_set_halign(fa_right);
    draw_text(room_width-unit*16, unit*16, string(score));
}
else {
    draw_set_font(fnt_score);
    draw_set_halign(fa_center);
    draw_set_valign(fa_middle);
    draw_text(room_width/2, room_height/2, "You managed to steal\n"+string(score)+" Internets!\nClick anywhere to Restart.");
}

