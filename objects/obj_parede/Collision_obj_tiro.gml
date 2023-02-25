/// @description

obj_player_stats.pontos += 100;

image_index ++;
vida -= obj_player_stats.tiro_dano;
if vida <= 0
{
 instance_destroy();
}

instance_destroy(other);


