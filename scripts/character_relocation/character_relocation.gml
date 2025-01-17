// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function character_relocation(levelDims){
	//Find postition for party member
	var cellH = sprite_get_height(sCell)
	for(var member = 0; member < array_length(oPlayer.party)-1; member++)
		if(oPlayer.party[member] != -4){
			var spawnX = cellH
			var spawnY = cellH
			while(position_meeting(spawnX, spawnY, oCellOccupier)){
				var spawnX = (spawnX + cellH) mod (levelDims[0] * cellH)
				var spawnY = (spawnY + cellH) mod (levelDims[0] * cellH)
			}
			oPlayer.party[member].x = spawnX
			oPlayer.party[member].y = spawnY
			oPlayer.party[member].move_queue = ds_queue_create()
			oPlayer.party[member].hp = oPlayer.party[member].hp + 1
			oPlayer.party[member].base_agility = oPlayer.party[member].base_agility + 1
			oPlayer.party[member].base_intelligence = oPlayer.party[member].base_intelligence + 1
			oPlayer.party[member].base_strength = oPlayer.party[member].base_strength + 1
			var chamber = instance_nearest(spawnX, spawnY, oChamber)
			makePath(spawnX, spawnY, chamber.x, chamber.y, cellH)
			destroy_fog(spawnX, spawnY, oPlayer.party[member].visibility)
			protect_character(spawnX, spawnY, cellH * 2)
		}
	oCamera.x = oPlayer.selected_character.x
	oCamera.y = oPlayer.selected_character.y
}