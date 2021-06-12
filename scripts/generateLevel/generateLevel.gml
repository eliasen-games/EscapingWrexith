// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function generateLevel(level){
	//Reset Seed
	randomize()
	//Get Level Dimensions
	var levelDims = getLevelDims(level)
	//Make Cells
	var rowAmount = irandom_range(levelDims[0], levelDims[1])
	var colAmount = irandom_range(levelDims[2], levelDims[3])
	makeCells(rowAmount,colAmount)
	//Generate Rooms
	generateChambers(level, [colAmount, rowAmount])
	//Generate Monsters
	MonsterSpawning(levelDims)
	//GenerateCrafting
	CraftingSpawning(levelDims)
	//GenerateTreasure
	//Increment Level
	level++
}