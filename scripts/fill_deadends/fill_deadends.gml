// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fill_deadends(){
	if(instance_exists(oDeadEnd)){
		for(var i = 0; i < instance_number(oDeadEnd); i++){
			var currDeadEnd = instance_find(oDeadEnd, i)
			var endX = currDeadEnd.x
			var endY = currDeadEnd.y
			var instance_num = irandom(200)
			if(instance_num > 188){
				var stationSpawn = craftingStations[irandom(array_length(craftingStations)-1)]
				instance_create_depth(endX, endY, depth, stationSpawn)
			} else if(instance_num > 150 ){
				instance_create_depth(endX, endY, depth, oEssenceJar)
			} else if(instance_num > 30){
				var monsterSpawn = monsters[irandom(array_length(monsters)-1)]	
				instance_create_depth(endX, endY, depth, monsterSpawn)
			} else if(instance_num > 20){
				instance_create_depth(endX, endY, depth, oStrangerCharacter)	
			}
		}
		instance_destroy(oDeadEnd)
	}
}