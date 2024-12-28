
forca[0] = (keyboard_check(vk_right)) - (keyboard_check(vk_left))


//usando pitagoras para adquirir o modulo do vetor de movimento (util pra depois que a gente implementar mais
//fontes de força em eixos diferentes)
module = power(forca[0], 2) + power(forca[1], 2)
module = sqr(module)
//if module > max_spd

//pegando angulo
if (module == 0){}
else{
	movangle = arccos(forca[0] / module)
}

if ((velocidade > 0)||(velocidade < 0)){
	module -= decell
}

//speed_cap
if (velocidade > max_spd){
	velocidade = max_spd
}

if (velocidade < -max_spd){
	velocidade = -max_spd
}

//settando a velocidade
velocidade += cos(movangle) * module
x += velocidade




/*
 accel += (forca[0])


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
*/



show_debug_message(forca[0])
show_debug_message(velocidade)