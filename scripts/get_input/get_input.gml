// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_input(inputs){
	inputs = array_create(12, 0)
	//released is default for checking if a button was pressed
	//Select
	inputs[0] = mouse_check_button_released(mb_left)
	//Cycle
	inputs[1] = mouse_check_button_released(mb_right)
	//Select Characters
	inputs[2] = keyboard_check_released(ord("1"))
	inputs[3] = keyboard_check_released(ord("2"))
	inputs[4] = keyboard_check_released(ord("3"))
	inputs[5] = keyboard_check_released(ord("4"))
	inputs[6] = keyboard_check_released(ord("5"))
	//Consumable
	inputs[7] = keyboard_check_released(ord("Q"))
	//Spell
	inputs[8] = keyboard_check_released(ord("E"))
	//Key Confirm
	inputs[9] = keyboard_check_released(vk_tab)
	//Camera Controls
	//Cam Zoom
	inputs[10] = mouse_wheel_down()
	inputs[11] = mouse_wheel_up()
	//Cam Movement
	inputs[12] = keyboard_check(ord("W"))
	inputs[13] = keyboard_check(ord("A"))
	inputs[14] = keyboard_check(ord("S"))
	inputs[15] = keyboard_check(ord("D"))
	
	return inputs
}