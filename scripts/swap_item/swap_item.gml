// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function swap_item(character, item){
	item.picked_up = true
	item.x = 0
	item.y = 0
	switch item.text{
		case "a":
			if(character.armor_slot == noone){
				character.armor_slot = item
			} else{
				var new_drop = character.armor_slot
				character.armor_slot = item
				drop_item(new_drop, item.x, item.y)
			}
			break;
		case "p":
			if(character.consumable_slot == noone){
				character.consumable_slot = item
			} else{
				var new_drop = character.consumable_slot
				character.consumable_slot = item
				drop_item(new_drop, item.x, item.y)
			}
			break;
		case "s":
			if(character.magic_slot == noone){
				character.magic_slot = item
			} else{
				var new_drop = character.magic_slot
				character.magic_slot = item
				drop_item(new_drop, item.x, item.y)
			}
			break;
		case "w":
			if(character.weapon_slot == noone){
				character.weapon_slot = item
			} else{
				var new_drop = character.weapon_slot
				character.weapon_slot = item
				drop_item(new_drop, item.x, item.y)
			}
			break;
	}
}