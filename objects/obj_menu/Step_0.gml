/// @description

if instance_exists(obj_player_stats)
{
	pts = obj_player_stats.pontos;
	
	
	//mudando a cor do tank
	if escolheu_tank1
	{
		obj_player_stats.sprite = spr_tank1;
	}
	else if escolheu_tank2
	{
		obj_player_stats.sprite = spr_tank2;
	}
	else if escolheu_tank3
	{
		obj_player_stats.sprite = spr_tank3;
	}
	else if escolheu_tank4
	{
		obj_player_stats.sprite = spr_tank4;
	}
	
	
	//comprando upgrades
	if comprou_upgrade1 //atk speed
	{
		if custo_upgrade1 <= pts
		{
			obj_player_stats.pontos -= custo_upgrade1;
			
			
			//diminuindo o atk speed
			if obj_player_stats.cd_tiro_base > 15
			{
				obj_player_stats.cd_tiro_base -= 3;
			}
			
		}
		
		comprou_upgrade1 = false;
	}
	else if comprou_upgrade2 //recupera vida
	{
		if custo_upgrade2 <= pts && obj_player_stats.vida < obj_player_stats.vida_max
		{
			obj_player_stats.pontos -= custo_upgrade2;
			
			//recuperando vida se tiver perdido
			obj_player_stats.vida += 1;
		}
		comprou_upgrade2 = false;
	}
	else if comprou_upgrade3
	{
		if custo_upgrade3 <= pts
		{
			obj_player_stats.pontos -= custo_upgrade3;
			
			
			if obj_player_stats.vel_tiro < 20
			{
				obj_player_stats.vel_tiro += 0.5;
			}
		}
		comprou_upgrade3 = false;
	}
	else if comprou_upgrade4
	{
		if custo_upgrade4 <= pts
		{
			obj_player_stats.pontos -= custo_upgrade4;
			
			if obj_player_stats.tiro_dano < 2
			{
				obj_player_stats.tiro_dano += 1;
			}
		}	
		comprou_upgrade4 = false;
	}
	
	
	
	
	
	

}