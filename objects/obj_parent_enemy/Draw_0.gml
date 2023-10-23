/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



draw_self();


if(hit_alpha > 0){
	gpu_set_fog(true,hit_color,0,0);
	draw_sprite_ext(sprite_index,image_index,x,y,1,1,0,c_white,hit_alpha);
	gpu_set_fog(false,hit_color,0,0);
}

ilumina(x, y, 50, 20)