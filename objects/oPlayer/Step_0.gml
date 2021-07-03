switch_characters(id)

var notOnFog = !position_meeting(oCursor.x, oCursor.y, oFog)
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