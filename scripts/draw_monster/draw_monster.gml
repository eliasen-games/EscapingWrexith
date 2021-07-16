// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_monster(monsterLetter){
	var drawCol = c_maroon
	var append = "|"
	if(alarm[0] > alarmTime*room_speed/3*2){
		append = "."
		drawCol = c_red
	
	} else if(alarm[0] > alarmTime*room_speed/3){
		append = ":"
		drawCol = c_red
	}
	drawBlockText(monsterLetter+append, drawCol)
}