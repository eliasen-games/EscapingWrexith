draw_set_font(fEntity)
if (is_selected) {
	drawBlockText(string(character_id), c_lime)
	draw_circle_color(x,y,sprite_get_height(sCell)/2, c_lime, c_lime, true)
	draw_circle_color(x,y,sprite_get_height(sCell)/2-1, c_lime, c_lime, true)
	draw_circle_color(x,y,sprite_get_height(sCell)/2-2, c_lime, c_lime, true)
}
else {
	drawBlockText(string(character_id), c_green)
	draw_circle_color(x,y,sprite_get_height(sCell)/2, c_lime, c_green, true)
	draw_circle_color(x,y,sprite_get_height(sCell)/2-1, c_lime, c_green, true)
	draw_circle_color(x,y,sprite_get_height(sCell)/2-2, c_lime, c_green, true)
}

if(drawSpell){
	currSpellRadius += spellExpandRate
	draw_set_color(c_orange)
	draw_circle(x,y,currSpellRadius, true)
	if(currSpellRadius >= currMaxSpellRad){
		currSpellRadius = 0
		drawSpell = false
	}
}