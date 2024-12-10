velocidade = (velocidade + (accel * delta)) * (1 - ((1 - frc) * delta))

if keyboard_check(vk_right){
 x+=velocidade;
}
if keyboard_check(vk_left){
 x-=velocidade;
}