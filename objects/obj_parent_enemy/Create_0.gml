/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

image_speed = 0
sprite_index = choose(spr_corpo_seco, spr_cuca, spr_lobisomem)

ix = 0.8
iy = ix

meu_spr_idle = sprite_index
meu_spr_walk = sprite_index
meu_spr_attack = sprite_index

cos_animation = 0


estado = "vazio";
caminho = path_add();
velc = 1.0;
life = 10 * (global.nivel+1);
hit_alpha = 0;
hit_color = c_white;

time_attack = 0
dano = 20