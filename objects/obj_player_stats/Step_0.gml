/// @description


menu = instance_exists(obj_menu);
player = instance_exists(obj_player);


if player
{
	
	//em cima da loja
	var loja = obj_player.loja;
	
	if loja && !menu
	{
		instance_create_layer(0,0, layer, obj_menu)
	}else if !loja && menu
	{
		instance_destroy(obj_menu);
	}
}




/*
if keyboard_check_pressed(vk_escape)
{
	if menu
	{
		instance_destroy(obj_menu);
	}
	else
	{
		instance_create_layer(0,0, layer, obj_menu)
	}
}

