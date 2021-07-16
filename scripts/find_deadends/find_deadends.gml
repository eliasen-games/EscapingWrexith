// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function find_deadends(levelDims){
	var cellH = sprite_get_height(sCell)
	for(var i = 1; i < levelDims[0]-1; i++){
		for(var j = 1; j < levelDims[1]-1; j++){
			var currX = i * cellH
			var currY = j * cellH
			if(!position_meeting(currX, currY, oCellOccupier) and !position_meeting(currX, currY, oDoor)  and !position_meeting(currX, currY, oCraftingParent)){
				var surroundingWalls = 0
				
				//Check Left
				if(position_meeting(currX-cellH, currY, oWall)){
					surroundingWalls++	
				}
				//Check Right
				if(position_meeting(currX+cellH, currY, oWall)){
					surroundingWalls++	
				}
				
				//Efficiency Check
				if(surroundingWalls > 0){
					//Check Up
					if(position_meeting(currX, currY-cellH, oWall)){
						surroundingWalls++	
					}
					//Check Down
					if(position_meeting(currX, currY+cellH, oWall)){
						surroundingWalls++	
					}
				} else{
					continue		
				}
				
				//Create an object
				if(surroundingWalls == 3){
					show_debug_message("deadend found")
					instance_create_depth(currX, currY, depth, oDeadEnd)
				}
			}
		}
	}
}