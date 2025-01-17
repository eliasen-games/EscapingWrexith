// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function MonsterSpawning(levelDims){
	var numMonsters = irandom_range(6 + level, 6 + level * 4)
	while(numMonsters > 0){
		var monsterSpawnP = irandom(99)
		var monsterSpawn = monsters[irandom(array_length(monsters)-1)];
		if(monsterSpawnP > 90){
			monsterSpawn = oGhost
		} else if(monsterSpawnP > 70){
			monsterSpawn = oSkeleton
		} else if(monsterSpawnP > 40){
			monsterSpawn = oTroll
		} else{
			monsterSpawn = oOrc
		}
		var monster = spawn_in_empty(levelDims, monsterSpawn)
		if(monster != noone){
			var xpGain = monster.baseXP + monster.XPIncrease * level
			monster.xp += irandom_range(xpGain * .8, xpGain * 1.2)
			monster.hp = monster.baseHealth + monster.healthIncrease * (level - 1)
			monster.dmg = monster.baseDamage + monster.damageIncrease * (level - 1)
			numMonsters--
		}
	}
}