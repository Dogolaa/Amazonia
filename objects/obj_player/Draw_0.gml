/// @description Inserir descrição aqui
// Você pode escrever seu código neste editor

draw_self()

global.vida = max(0, global.vida)
draw_set_color(c_red)
draw_line_width(x-8, y-10, (x+8), y-10, 3)

draw_set_color(c_green)
draw_line_width(x-8, y-10, (x-8)+ 16 *global.vida/global.max_vida, y-10, 3)

