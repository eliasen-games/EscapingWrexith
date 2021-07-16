// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function protect_character(charX, charY, radius){
	with (oParentMonster){
		if(distance_to_point(charX, charY) < radius){
			instance_destroy()
		}
	}
}