// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function cycle_character(party){
	var currentMember = get_selected_index(party)
	selected_character.is_selected = false
	for(var i = 1; i < 5; i++){
		if(party[(i+currentMember) mod 4] != noone){
			selected_character = party[(i+currentMember) mod 4]
			selected_character.is_selected = true
			with oCamera{
				xTo = oPlayer.selected_character.x
				yTo = oPlayer.selected_character.y
				audio_play_sound(soundCharSwitch, 11, false)
			}
			break;
		}
	}
}