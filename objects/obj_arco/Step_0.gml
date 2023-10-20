if(instance_exists(weapon_id)){
	x = weapon_id.x;
	y = weapon_id.y + 7;
	
	
	weapon_x = x + lengthdir_x(16,weapon_dir);
	weapon_y = y + lengthdir_y(16,weapon_dir);
	
	
	image_angle = weapon_dir;
	
	
	function atirar(){
		
		if(!weapon > 0){
			return false;	
		}
		
		var proj_inst = instance_create_layer(weapon_x,weapon_y,"Projeteis",obj_proj);
		proj_inst.sprite_index = proj;
		proj_inst.image_angle = weapon_dir;
		proj_inst.direction = weapon_dir;
		proj_inst.speed = proj_spd;
		proj_inst.damage = proj_damage;
		
	}
	
}else {
	instance_destroy();
}

