
var tecla_direita = keyboard_check(ord("D"));
var tecla_esquerda = keyboard_check(ord("A"));
var tecla_cima = keyboard_check(ord("W"));
var tecla_baixo = keyboard_check(ord("S"));

var teclas = (tecla_direita - tecla_esquerda != 0) || (tecla_baixo - tecla_cima != 0);






move_dir = point_direction(0, 0, tecla_direita - tecla_esquerda, tecla_baixo - tecla_cima);

velh = lengthdir_x(velc * teclas, move_dir);
velv = lengthdir_y(velc * teclas, move_dir);

if (place_meeting(x + velh, y, obj_bloqueia))
{
    while (!place_meeting(x + sign(velh), y, obj_bloqueia))
    {
        x += sign(velh);
    }
    velh = 0;
}

x += velh;

if (place_meeting(x, y + velv, obj_bloqueia))
{
    while (!place_meeting(x, y + sign(velv), obj_bloqueia))
    {
        y += sign(velv);
    }
    velv = 0;
}

y += velv;



