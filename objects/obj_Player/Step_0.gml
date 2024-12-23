
forca[0] = (keyboard_check(vk_right)) - (keyboard_check(vk_left))

 accel += (forca[0]/2)


 if velocidade < velocidade_max && forca[0] > 0 {
	velocidade += accel
	
	if velocidade > velocidade_max {
		velocidade = velocidade_max
	}
	
	 x += velocidade
 }
 

 
 if velocidade > -velocidade_max && forca[0] < 0 {
	velocidade -= accel
	
	if velocidade <= -velocidade_max {
		velocidade = -velocidade_max
	}
	
	x -= velocidade
 }
 
  

show_debug_message(forca[0])

show_debug_message(velocidade)

//comentario para teste de token