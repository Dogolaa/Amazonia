armas[1] = ds_map_create();
ds_map_add(armas[1],"sprite",spr_arco);
ds_map_add(armas[1],"proj",spr_arrow);
ds_map_add(armas[1],"proj_spd",8);
ds_map_add(armas[1],"proj_damage",10);
ds_map_add(armas[1],"proj_delay",12);
ds_map_add(armas[1],"automatic",false);



weapon = 1;

weapon_id = -1;
weapon_dir = -1;
weapon_x = 0;
weapon_y = 0;

var map = armas[weapon];
sprite = map[? "sprite"];
proj = map[? "proj"];
proj_spd = map[? "proj_spd"];
proj_damage = map[? "proj_damage"];
proj_delay = map[? "proj_delay"];
automatic = map[? "automatic"];