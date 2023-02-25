/// @description

var acel = .05;
var offset = 0;

player = instance_exists(obj_player)

if player
{
	if obj_player.loja //esta em cima da loja
	{
		x = 0;
		y = 0;
	}
	else
	{	
		x = lerp(x, obj_player.x + (obj_player.velx * 16), acel);
		y = lerp(y, obj_player.y + (obj_player.vely * 16) + offset, acel);
	}
}