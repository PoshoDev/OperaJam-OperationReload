function guy_dir_change() {
    mode = GuyMode.walking;
    target = irandom_range(offset, room_width-offset);
    dir = target < x ? -1 : 1;
}