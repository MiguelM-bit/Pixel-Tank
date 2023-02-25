/// @description
var gui_width = display_get_gui_width();

#region desenhando o icone dos upgrades

draw_set_font(Font1);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(gui_width/3, 250, "Escolha seu upgrade abaixo");

//escrevendo quanto pontos eu tenho
draw_text(gui_width/2 + (gui_width/3), 64, "Pontos: " + string(pts));
draw_text(gui_width/2 + (gui_width/3), 84, "cd: " + string(obj_player_stats.cd_tiro_base));




// Define as variáveis
var interface_x, interface_y, interface_width, interface_height;
var square_size, square_spacing;
var square1_x, square1_y, square2_x, square2_y, square3_x, square3_y, square4_x, square4_y;

var sprite_scale;

// Define as cores
var bg_color = c_black;
var square_color = c_grey;

// Define as dimensões da interface
interface_x = 362;
interface_y = 286;
interface_width = gui_width - (interface_x * 2);
interface_height = 135;

#region sprites
sprite_scale =	1.6//(interface_height * 0.8) / sprite_height;

//Carregando as sprites
var 
upgrade1 = spr_upgrade_cd_speed,
upgrade2 = spr_upgrade_vida,
upgrade3 = spr_upgrade_atk_speed,
upgrade4 = spr_upgrade_dano;
#endregion

#region quadrados
// Define as dimensões dos quadrados
square_size = 100;
square_spacing = 32;
square1_x = interface_x + square_spacing;
square1_y = interface_y + (interface_height - square_size) / 2;
square2_x = square1_x + square_size + square_spacing;
square2_y = square1_y;
square3_x = square2_x + square_size + square_spacing;
square3_y = square1_y;
square4_x = square3_x + square_size + square_spacing;
square4_y = square1_y;
#endregion

#region desenhando a barra da interface
// Desenha a barra de interface
draw_set_color(bg_color);
draw_set_alpha(.5);
draw_rectangle(interface_x, interface_y, interface_x + interface_width, interface_y + interface_height, false);
draw_set_alpha(1);
#endregion

#region desenhando os quadrados e as sprites
draw_set_color(square_color);
draw_set_font(Font2);

var marg_x = 50, marg_y = 49;
var marg = 8

draw_set_alpha(.6);
draw_rectangle(square1_x, square1_y, square1_x + square_size, square1_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(upgrade1, 0, square1_x + marg_x, square1_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);
	draw_set_color(c_black);
	draw_text(square1_x, square1_y + square_size - marg, "$$$: " + string(custo_upgrade1));
	draw_set_color(square_color);
	
draw_set_alpha(.6);
draw_rectangle(square2_x, square2_y, square2_x + square_size, square2_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(upgrade2, 0, square2_x + marg_x, square2_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);
	draw_set_color(c_black);
	draw_text(square2_x, square2_y + square_size - marg, "$$$: " + string(custo_upgrade2));
	draw_set_color(square_color);
	
draw_set_alpha(.6);
draw_rectangle(square3_x, square3_y, square3_x + square_size, square3_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(upgrade3, 0, square3_x + marg_x, square3_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);
	draw_set_color(c_black);
	draw_text(square3_x, square3_y + square_size - marg, "$$$: " + string(custo_upgrade3));
	draw_set_color(square_color);

draw_set_alpha(.6);
draw_rectangle(square4_x, square4_y, square4_x + square_size, square4_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(upgrade4, 0, square4_x + marg_x, square4_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);
	draw_set_color(c_black);
	draw_text(square4_x, square4_y + square_size - marg, "$$$: " + string(custo_upgrade4));
	draw_set_color(square_color);

#endregion


#region verifica se o jogador clicou em um dos quadrados
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, square1_x, square1_y, square1_x + square_size, square1_y + square_size)) {
        // O jogador clicou no 1
		
		comprou_upgrade1 = true;
		
        //show_message("Você clicou no quadrado 1!");
    }
	else if (point_in_rectangle(mouse_x, mouse_y, square2_x, square2_y, square2_x + square_size, square2_y + square_size)) {
        // O jogador clicou no peixe 2
		
		comprou_upgrade2 = true;
		
		
        //show_message("Você clicou no quadrado 2!");
    }
	else if (point_in_rectangle(mouse_x, mouse_y, square3_x, square3_y, square3_x + square_size, square3_y + square_size)) {
        // O jogador clicou no peixe 3
		
		comprou_upgrade3 = true;
		
		
        //show_message("Você clicou no quadrado 3!");
    }
	else if (point_in_rectangle(mouse_x, mouse_y, square4_x, square4_y, square4_x + square_size, square4_y + square_size)) {
        // O jogador clicou no peixe 4
		
		comprou_upgrade4 = true;
		
		
        //show_message("Você clicou no quadrado 4!");
    }
}
#endregion


#endregion


#region desenhando a troca de cor do tank


draw_set_font(Font1);
draw_set_color(c_black);
draw_set_alpha(1);
draw_text(gui_width/3, 445, "Escolha a cor do tank abaixo");



// Define as variáveis
var interface_x, interface_y, interface_width, interface_height;
var square_size, square_spacing;
var square1_x, square1_y, square2_x, square2_y, square3_x, square3_y, square4_x, square4_y;

var sprite_scale;

// Define as cores
var bg_color = c_black;
var square_color = c_grey;

// Define as dimensões da interface
interface_x = 362;
interface_y = 480;
interface_width = gui_width - (interface_x * 2);
interface_height = 135;

#region sprites
sprite_scale =	1.6//(interface_height * 0.8) / sprite_height;

//Carregando as sprites
var 
tank1 = spr_tank1,
tank2 = spr_tank2,
tank3 = spr_tank3,
tank4 = spr_tank4;
#endregion

#region quadrados
// Define as dimensões dos quadrados
square_size = 100;
square_spacing = 32;
square1_x = interface_x + square_spacing;
square1_y = interface_y + (interface_height - square_size) / 2;
square2_x = square1_x + square_size + square_spacing;
square2_y = square1_y;
square3_x = square2_x + square_size + square_spacing;
square3_y = square1_y;
square4_x = square3_x + square_size + square_spacing;
square4_y = square1_y;
#endregion

#region desenhando a barra da interface
// Desenha a barra de interface
draw_set_color(bg_color);
draw_set_alpha(.5);
draw_rectangle(interface_x, interface_y, interface_x + interface_width, interface_y + interface_height, false);
draw_set_alpha(1);
#endregion

#region desenhando os quadrados e as sprites dos peixes
draw_set_color(square_color);

var marg_x = 50, marg_y = 49;


draw_set_alpha(.6);
draw_rectangle(square1_x, square1_y, square1_x + square_size, square1_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(tank1, 0, square1_x + marg_x, square1_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);
	
draw_set_alpha(.6);
draw_rectangle(square2_x, square2_y, square2_x + square_size, square2_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(tank2, 0, square2_x + marg_x, square2_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);
	
draw_set_alpha(.6);
draw_rectangle(square3_x, square3_y, square3_x + square_size, square3_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(tank3, 0, square3_x + marg_x, square3_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);

draw_set_alpha(.6);
draw_rectangle(square4_x, square4_y, square4_x + square_size, square4_y + square_size, false);
draw_set_alpha(1);
	draw_sprite_ext(tank4, 0, square4_x + marg_x, square4_y + marg_y, sprite_scale, sprite_scale, 0, c_white, 1);

#endregion


#region verifica se o jogador clicou em um dos quadrados
if (mouse_check_button_pressed(mb_left)) {
    if (point_in_rectangle(mouse_x, mouse_y, square1_x, square1_y, square1_x + square_size, square1_y + square_size)) {
        // O jogador clicou no 1
		
		escolheu_tank1 = true;
		escolheu_tank2 = false;
		escolheu_tank3 = false;
		escolheu_tank4 = false;
		
        //show_message("Você clicou no quadrado 1!");
    }
	else if (point_in_rectangle(mouse_x, mouse_y, square2_x, square2_y, square2_x + square_size, square2_y + square_size)) {
        // O jogador clicou no peixe 2
		
		escolheu_tank1 = false;
		escolheu_tank2 = true;
		escolheu_tank3 = false;
		escolheu_tank4 = false;
		
		
        //show_message("Você clicou no quadrado 2!");
    }
	else if (point_in_rectangle(mouse_x, mouse_y, square3_x, square3_y, square3_x + square_size, square3_y + square_size)) {
        // O jogador clicou no peixe 3
		
		escolheu_tank1 = false;
		escolheu_tank2 = false;
		escolheu_tank3 = true;
		escolheu_tank4 = false;
		
		
        //show_message("Você clicou no quadrado 3!");
    }
	else if (point_in_rectangle(mouse_x, mouse_y, square4_x, square4_y, square4_x + square_size, square4_y + square_size)) {
        // O jogador clicou no peixe 4
		
		escolheu_tank1 = false;
		escolheu_tank2 = false;
		escolheu_tank3 = false;
		escolheu_tank4 = true;
		
		
        //show_message("Você clicou no quadrado 4!");
    }
}
#endregion

#endregion