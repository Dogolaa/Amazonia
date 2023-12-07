if (sprite != -1){
	if image_index > 0 and image_index < 3{
		var taxa = image_index/4
		var xx = obj_player_inic.x * (taxa) + weapon_x * (1 - taxa)
		var yy = (obj_player_inic.y+7) * (taxa) + weapon_y * (1 - taxa)
		draw_sprite_ext(spr_arrow,image_index,xx,yy,1,1,weapon_dir,c_white,1);
	}
	draw_sprite_ext(sprite,image_index,weapon_x,weapon_y,1,1,weapon_dir,c_white,1);
}