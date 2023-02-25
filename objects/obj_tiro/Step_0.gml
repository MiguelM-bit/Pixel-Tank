/// @description

var acel = .05;
xscale = lerp(xscale, image_xscale, acel);
yscale = lerp(yscale, image_yscale, acel);


t--;
if t <= 0
{
	instance_destroy();
}


if image_index >= image_number - 1 {
    // código a ser executado quando a sprite atingir o último quadro
	image_index = image_number - 1;
}