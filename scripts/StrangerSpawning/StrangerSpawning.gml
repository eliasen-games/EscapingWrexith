// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function StrangerSpawning(levelDims, level){
	var spawnStranger = irandom(3)
	if(spawnStranger == 0){
		spawn_in_empty(levelDims, oStrangerCharacter)
	}
}