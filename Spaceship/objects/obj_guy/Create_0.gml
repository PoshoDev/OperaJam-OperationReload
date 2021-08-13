
#macro offset       (unit*64)

#macro init_left    (-unit*64)
#macro init_right    (room_width+unit*64)

#macro guy_spd_inc      (unit/32)
#macro guy_spd_max      (unit*2)

enum GuyMode    { idle, walking, stopping, gasp, throwing };
enum GuySpr     { normal, gasp, angry };

g.guys++;

y = room_height;

guy_dir_change();
speed = 0;
angry = false;

anim_sin = 0;
anim_sin2 = 0;
anim_frame = 0;
anim_bump = 0;

device = instance_create_depth(x, y, depth-1, obj_device)
device.owner = self;
rescale(device, 12);

throwables = 1;

sprite_index = guy_set_sprite();
image_speed = 0;
