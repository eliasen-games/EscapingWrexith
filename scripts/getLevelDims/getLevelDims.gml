// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function getLevelDims(level){
	/*
	var rowFloor = (1 * level + 27)
	var colFloor = (1 * level + 27)
	var rowCeil  = (2 * level + 52)
	var colCeil  = (2 * level + 52)
	*/
	var rowFloor = (1 * level + 75)
	var colFloor = (1 * level + 75)
	var rowCeil  = (2 * level + 100)
	var colCeil  = (2 * level + 100)
	return [rowFloor, rowCeil, colFloor, colCeil]
}