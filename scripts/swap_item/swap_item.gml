// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function swap_item(character, item){
	item.picked_up = true
	switch item.text{
		case "a":
			if(character.armor_slot == noone){
				character.armor_slot = item
			} else{
				drop_item(character.armor_slot, item.x, item.y)
				character.armor_slot = item
			}
			break;
		case "p":
			if(character.consumable_slot == noone){
				character.consumable_slot = item
			} else{
				drop_item(character.consumable_slot, item.x, item.y)
				character.consumable_slot = item
			}
			break;
		case "s":
			if(character.magic_slot == noone){
				character.magic_slot = item
			} else{
				drop_item(character.magic_slot, item.x, item.y)
				character.magic_slot = item
			}
			break;
		case "w":
			if(character.weapon_slot == noone){
				character.weapon_slot = item
			} else{
				drop_item(character.weapon_slot, item.x, item.y)
				character.weapon_slot = item
			}
			break;
	}
	item.x = 0
	item.y = 0
}