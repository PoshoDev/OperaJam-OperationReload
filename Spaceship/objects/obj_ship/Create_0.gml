
#macro ship_spd_max     (unit*12)
#macro ship_dist_max    (unit*80)
#macro ship_beam_inc    (unit*12)
#macro ship_ang_inc     4

dir = 1;
spd = 0;

beam_enable = false;
beam_dist = 0;
beam_sin = 0;
beam_last = 0;
beam_frame = 0;

anim_sin = 0;
anim_bump = 0;
