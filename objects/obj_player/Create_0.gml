velh = 0;
velv = 0;
velc = 3;

my_weapon = instance_create_layer(x , y , "Weapons", obj_arco);
my_weapon.weapon_id = self;

cursor_sprite = spr_cursor;
window_set_cursor(cr_none);

