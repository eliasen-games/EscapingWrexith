// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_fog_sprite(){
	//Surrounded
	if(neighbors[0,1] != noone and neighbors[1,0] != noone and neighbors[1,2] != noone and neighbors[2,1] != noone){
		image_index	= 0
	} else if(neighbors[0,1] != noone and neighbors[1,0] != noone and neighbors[1,2] != noone){
		image_index	= 1
		image_angle = 180
	} else if(neighbors[0,1] != noone and neighbors[1,0] != noone and neighbors[2,1] != noone){
		image_index	= 1
		image_angle = 270
	} else if(neighbors[0,1] != noone and neighbors[1,2] != noone and neighbors[2,1] != noone){
		image_index	= 1
		image_angle = 90
	} else if(neighbors[1,0] != noone and neighbors[1,2] != noone and neighbors[2,1] != noone){
		image_index	= 1
		image_angle = 0
	} else if(neighbors[0,1] != noone and neighbors[2,1] != noone){
		image_index	= 5
		image_angle = 90
	} else if(neighbors[1,0] != noone and neighbors[1,2] != noone){
		image_index	= 5
		image_angle = 0
	} else if(neighbors[0,1] != noone and neighbors[1,2] != noone){
		image_index	= 2
		image_angle = 180
	} else if(neighbors[0,1] != noone and neighbors[1,0] != noone){
		image_index	= 2
		image_angle = 270
	} else if(neighbors[1,0] != noone and neighbors[1,2] != noone){
		image_index	= 2
		image_angle = 0
	} else if(neighbors[1,2] != noone and neighbors[2,1] != noone){
		image_index	= 2
		image_angle = 90
	} else if(neighbors[0,1] != noone){
		image_index	= 3
		image_angle = 180
	} else if(neighbors[1,0] != noone){
		image_index	= 3
		image_angle = 270
	} else if(neighbors[2,1] != noone){
		image_index	= 3
		image_angle = 0
	} else if(neighbors[1,2] != noone){
		image_index	= 3
		image_angle = 90
	} else{
		image_index = 4
	}
}