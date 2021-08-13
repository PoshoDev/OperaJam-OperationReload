
enum GuyMode { idle, walking, stopping };
mode = GuyMode.walking;
offset = unit*32;
target = irandom_range(offset, room_width-offset);
speed = 0;