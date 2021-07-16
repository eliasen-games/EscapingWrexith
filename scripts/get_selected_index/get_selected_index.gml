// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function get_selected_index(party){
	for(var i = 0; i < 5; i++){
		if(party[i] == selected_character){
			return i	
		}
	}
}