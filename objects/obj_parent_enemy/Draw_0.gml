/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor



//draw_self();
draw_sprite_ext(sprite_index, image_index, x, y, image_xscale*ix, image_yscale*iy, dcos(cos_animation) * 10, image_blend, image_alpha)


if(hit_alpha > 0){
	gpu_set_fog(true,hit_color,0,0);
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale*ix, image_yscale*iy,dcos(cos_animation) * 10,c_white,hit_alpha);
	gpu_set_fog(false,hit_color,0,0);
}

ilumina(x, y, 40, 10)

depth = -y

draw_set_color(c_white)
draw_set_font(ft_menu)
draw_set_halign(fa_center)
draw_text_ext_transformed(x, y-24, nome, 20, 64, 0.2, 0.2, 0)