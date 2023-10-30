
if(instance_exists(weapon_id)){
	x = obj_player.x;
	y = obj_player.y + 7;
	weapon_dir = point_direction(x,y,mouse_x,mouse_y);
	
	if image_index == 3{
		var proj_inst = instance_create_layer(weapon_x,weapon_y,"Projeteis",obj_proj);
		proj_inst.sprite_index = proj;
		proj_inst.image_angle = weapon_dir;
		proj_inst.direction = weapon_dir;
		proj_inst.speed = proj_spd;
		proj_inst.damage = proj_damage;
	}
	if image_index >= 5{
		image_speed = 0
		image_index = 0
	}
	
	weapon_x = x + lengthdir_x(12,weapon_dir);
	weapon_y = y + lengthdir_y(8,weapon_dir);
	
	depth = obj_player.depth - angle_difference(image_angle, 180)
	
	image_angle = weapon_dir;
	
	if mouse_check_button_pressed(mb_left) and image_index == 0{
		image_speed = 0.2
	}
	
}else {
	instance_destroy();
}

