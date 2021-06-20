// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function spawn_anywhere(levelDims, object){
	var cellH = sprite_get_height(sCell)
	var spawnX = irandom_range(1,levelDims[0]-2) * cellH
	var spawnY = irandom_range(1,levelDims[1]-2) * cellH
	var objInstance = instance_create_depth(spawnX, spawnY, depth, object)
	
	//Make path to instance
	var currX = objInstance.x
	var currY = objInstance.y
	var to = instance_nearest(currX, currY, oChamber)
	makePath(currX, currY, to.x, to.y, cellH)
	
	//return objInstance
}