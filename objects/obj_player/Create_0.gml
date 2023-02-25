/// @description

velx = 0;
vely = 0;

acel = .35;
vel = 4;


tomou_dano = false;
cd_dano = 1 * room_speed;



xscale = 1;
yscale = 1;

time_p = .15 * room_speed;
timer_p = time_p;

blend = c_white;

angle = 0
player_angle = angle;

sprite = obj_player_stats.sprite;
vida = obj_player_stats.vida;
cd_tiro_base = obj_player_stats.cd_tiro_base;
vel_tiro = obj_player_stats.vel_tiro;

loja = place_meeting(x, y, obj_loja_area);

atirou = false;
cd_tiro = cd_tiro_base;


enum state
{
	parado, movendo
	
}

estado = state.parado;


if !instance_exists(obj_cam)
{
	instance_create_layer(x, y, layer, obj_cam)
}