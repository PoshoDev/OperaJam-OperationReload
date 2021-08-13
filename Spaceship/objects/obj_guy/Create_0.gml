
enum GuyMode { idle, walking, stopping };

offset = unit*32;
guy_dir_change();
speed = 0;

anim_sin = 0;
anim_sin2 = 0;
anim_frame = 0;

device = instance_create_depth(x, y, depth-1, obj_device)
device.owner = self;
rescale(device, 12);