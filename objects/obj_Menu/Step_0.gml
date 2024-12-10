cima = keyboard_check_pressed(vk_up)
baixo = keyboard_check_pressed(vk_down)
select = keyboard_check_pressed(vk_enter)

pos += baixo - cima
if pos >= op_length{pos = 0;}
if pos < 0 {pos = op_length-1}

if select{
switch(pos){
case 0:
room_goto_next();
break;

case 1:
game_end();
break;
}
}