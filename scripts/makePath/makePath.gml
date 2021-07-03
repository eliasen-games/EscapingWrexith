// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function makePath(xStart, yStart, xEnd, yEnd, cellH){
	instance_create_depth(xStart, yStart, depth, oHall)
	instance_create_depth(xEnd, yEnd, depth, oHall)
	var countX = 0
	var countY = 0
	while(countX <= abs(xStart-xEnd)/cellH or countY <= abs(yStart-yEnd)/cellH){
		var dir = 0
		if(countX <= abs(xStart-xEnd)/cellH and countY <= abs(yStart-yEnd)/cellH){
			dir = irandom(1)
			if(dir == 0){
				countX++
			} else{
				countY++	
			}
		} else if(countX <= abs(xStart-xEnd)/cellH){
			countX++
		} else{
			countY++
		}
		instance_create_depth(xStart + countX*cellH*sign(xEnd-xStart), yStart + countY*cellH*sign(yEnd-yStart), depth, oHall)
	}
	wipeWalls()
	//instance_destroy(oHall)
}