if(!oPlayer.paused){
	if (hp > strength) {
		hp = strength
	}
	//Character Death
	if (hp <= 0) {
		oPlayer.party[character_id - 1] = noone
		drop_all_items(x,y)
		instance_destroy(move_target)
		instance_destroy(id)
	}
	//Reduce Spell Cooldown
	if(currSpellCD > 0){
		currSpellCD--	
	}
} else{
	alarm[0]++
}