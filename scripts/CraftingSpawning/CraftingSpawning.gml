// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function CraftingSpawning(levelDims){
	var numStations = irandom_range(0, 1)
	while(numStations > 0){
		//show_debug_message("spawning crafting")
		var stationSpawn = craftingStations[irandom(array_length(craftingStations)-1)];
		spawn_anywhere(levelDims, stationSpawn, depth)
		numStations--
	}
}