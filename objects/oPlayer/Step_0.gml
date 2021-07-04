if(input.in[IN.pause]){
	pause_game()
}

if(!paused){
	switch_characters(id)
	
	var notOnFog = !instance_nearest(oCursor.x, oCursor.y, oCell).fog
	var notOnButton = !position_meeting(oCursor.x, oCursor.y, oButtonMaster)
	if (input.in[IN.select] and notOnFog and notOnButton and clickable) {
		cell_select_handling()
	}

	if (input.in[IN.consume]) {
		consume_item(selected_character)
	}

	if(input.in[IN.cycle]){
		cycle_character(party)	
	}
}