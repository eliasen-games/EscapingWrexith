// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function calculate_buffs(character){
	if (character.armor_slot != noone) {
		character.defense = character.armor_slot.defense_bonus
	}
	if (character.buff_slot != noone) {
		character.agility = character.base_agility + character.buff_slot.agility_bonus
		character.intelligence = character.base_intelligence + character.buff_slot.intelligence_bonus
		character.strength = character.base_strength + character.buff_slot.strength_bonus
	}
	if (character.weapon_slot != noone) {
		character.damage = character.base_damage + character.weapon_slot.damage_bonus
	}
	if(character.magic_slot != noone){
		if(input.in[IN.spell] and character.currSpellCD == 0 and oPlayer.selected_character == character){
			//Cast Spell
			cast_spell(character.currMaxSpellRad)
		}
	}
}