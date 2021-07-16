// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_item(item, drop_x, drop_y){
	if(instance_exists(item)){
		item.picked_up = false
		item.x = drop_x
		item.y = drop_y
	}
}