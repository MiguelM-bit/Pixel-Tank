/// @description

var up = keyboard_check(ord("W")),
	down = keyboard_check(ord("S")),
	right = keyboard_check(ord("A")),
	left = keyboard_check(ord("D")),
	shoot = keyboard_check(vk_space);
	
	
	
loja = place_meeting(x, y, obj_loja_area);

if place_meeting(x,y,Object7) && !tomou_dano
{
	obj_player_stats.vida -= 1;
	tomou_dano = true;
}

if tomou_dano
{
	cd_dano--;
	if cd_dano <= 0
	{
		tomou_dano = false;
		cd_dano = 1 * room_speed;
	}
	
}


	
	
	
	
if instance_exists(obj_player_stats)
{
	sprite = obj_player_stats.sprite;
	vida = obj_player_stats.vida;
	cd_tiro_base = obj_player_stats.cd_tiro_base;
	vel_tiro = obj_player_stats.vel_tiro;
}

switch(estado) //parado a andando
{
	case state.parado:
	
		velx = 0;
		vely = 0;	
	
		if (right || left || up || down)
		{
			estado = state.movendo;
		}
	
	break;
	
	case state.movendo:
	
	
		//velx = lerp(velx, (left - right) * vel, acel);
		//vely = lerp(vely, (down - up) * vel, acel);
		
		
		//girando de um lado para o outro
		if up
		{
			player_angle = 90;
			vely = -vel;
			velx = 0;
		}
		else if down
		{
			player_angle = 270;
			vely = vel;
			velx = 0;
		}
		else if left
		{
			player_angle = 0;
			velx = vel;
			vely = 0;
		}
		else if right
		{
			player_angle = 180;
			velx = -vel;
			vely = 0;
		}else
		{
			velx = 0;
			vely = 0;
		}
		
		
		//saindo do estado
		if (right || left || up || down)
		{
			timer_p = time_p;
		}
	
		timer_p--;
		if timer_p <= 0
		{
			estado = state.parado;
			timer_p = time_p;
		}
		
	break;	
}

if shoot && !atirou
{
	atirou = true;
	var tiro = instance_create_layer(x , y, layer, obj_tiro);
	tiro.speed = vel_tiro;
	tiro.direction = player_angle;
	tiro.image_angle = player_angle;
	
	if sprite==spr_tank1
	{
		tiro.sprite_index = spr_tiro_tank1;
	}
	else if sprite==spr_tank2
	{
		tiro.sprite_index = spr_tiro_tank2;
	}
	else if sprite==spr_tank3
	{
		tiro.sprite_index = spr_tiro_tank3;
	}
	else if sprite==spr_tank4
	{
		tiro.sprite_index = spr_tiro_tank4;
	}
	
	estado = state.parado;
}

if atirou
{
	cd_tiro--;
	if cd_tiro <= 0
	{
		atirou = false;
		cd_tiro = cd_tiro_base;
	}
}

//var acelAngle = .05;
//player_angle = lerp(player_angle, angle, acelAngle);

//player_angle -= angle_difference(player_angle, point_direction(x,y,mouse_x,mouse_y)) * acelAngle;

/*
//ajustando o scale
var acelScale = .2;
xscale = lerp(xscale, lado_xscale, acelScale);
yscale = lerp(yscale, lado_yscale, acelScale);
blend = lerp(blend, c_white, acelScale * 2);