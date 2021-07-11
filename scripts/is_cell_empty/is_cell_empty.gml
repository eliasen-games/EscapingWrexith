// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function is_cell_empty(checkX, checkY){
	if(position_meeting(checkX, checkY, oCellOccupier)){
		return false
	} else if(position_meeting(checkX, checkY, oCraftable)){
		return false
	} else if(position_meeting(checkX, checkY, oCraftingParent)){
		return false
	} else if(position_meeting(checkX, checkY, oEssenceJar)){
		return false
	}
	
	return true
}