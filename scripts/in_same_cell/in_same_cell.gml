// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function in_same_cell(x1, y1, x2, y2){
	var cell = instance_nearest(x1,y1,oCell)
	var cellX = cell.x
	var cellY = cell.y
	var cellH = sprite_get_height(sCell)
	if(abs(x2-cellX) < cellH/2 and abs(y2-cellY) < cellH/2){
		return true	
	} else{
		return false	
	}
}