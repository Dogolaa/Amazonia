velh = 0;
velv = 0;
velc = 0;
acc = 0.2
max_velc = 3

vida = 100
max_vida = 100

my_weapon = instance_create_layer(x , y , "Weapons", obj_arco);
my_weapon.weapon_id = self;

camera_follower = instance_create_depth(x, y, depth, obj_cam_follower)

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

