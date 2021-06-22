// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_fog_neighbors(){
	//top row
	var topRow = array_create(3, noone)
	if(place_meeting(x-sprite_width, y-sprite_height, oFog)){
		topRow[0] = instance_nearest(x-sprite_width, y-sprite_height, oFog)
	}
	if(place_meeting(x, y-sprite_height, oFog)){
		topRow[1] = instance_nearest(x, y-sprite_height, oFog)
	}
	if(place_meeting(x+sprite_width, y-sprite_height, oFog)){
		topRow[2] = instance_nearest(x+sprite_width, y-sprite_height, oFog)
	}
	
	//Middle Row
	var midRow = array_create(3, noone)
	if(place_meeting(x-sprite_width, y, oFog)){
		midRow[0] = instance_nearest(x-sprite_width, y, oFog)
	}
	if(place_meeting(x, y, oFog)){
		//This should be self
		midRow[1] = instance_nearest(x, y, oFog)
	}
	if(place_meeting(x+sprite_width, y, oFog)){
		midRow[2] = instance_nearest(x+sprite_width, y, oFog)
	}
	
	//Bottom Row
	var botRow = array_create(3, noone)
	if(place_meeting(x-sprite_width, y+sprite_height, oFog)){
		botRow[0] = instance_nearest(x-sprite_width, y+sprite_height, oFog)
	}
	if(place_meeting(x, y+sprite_height, oFog)){
		botRow[1] = instance_nearest(x, y+sprite_height, oFog)
	}
	if(place_meeting(x+sprite_width, y+sprite_height, oFog)){
		botRow[2] = instance_nearest(x+sprite_width, y+sprite_height, oFog)
	}
	
	return [topRow, midRow, botRow]
}