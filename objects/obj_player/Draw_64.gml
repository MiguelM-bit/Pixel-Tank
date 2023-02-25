/// @description


var xx = display_get_gui_width();


//loop para desenhar a quantidade de vida restantes na tela
for (var i = 0; i < vida; i++)
{
	//desenhando a vida
	draw_sprite_ext(spr_vida, 0, xx/2 + (((sprite_height/2) + 4) * i*2) - sprite_width, 20, .5, .5, 0, image_blend, image_alpha);
}