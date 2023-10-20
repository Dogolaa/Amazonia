if(instance_exists(obj_player)){
	
	x = lerp(x,target.x - cam_largura / 2 ,cam_velc);
	y = lerp(y,target.y - cam_altura / 2,cam_velc);
	
	
	x = clamp(x,0,room_width - cam_largura);
	y = clamp(y,0,room_height - cam_altura);
	
	
	
	camera_set_view_pos(view_camera[0],x,y);
	/*
	camera_set_view_target(view_camera[0], obj_cam_follower)
	camera_set_view_border(view_camera[0], 999, 999)*/
	
}else{
	target = -1;
}
