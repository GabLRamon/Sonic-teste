
forca[0] = (keyboard_check(vk_right) or keyboard_check(ord("D"))) - (keyboard_check(vk_left) or keyboard_check(ord("A")))


show_debug_message(forca[0])

accel += forca[0]/2


if velocidade < velocidade_max {
	velocidade += velocidade + accel/2
}


x += velocidade