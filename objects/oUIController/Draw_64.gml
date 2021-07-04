draw_set_font(fDef)
//Width
var width = display_get_gui_width()/7
var height = display_get_gui_height()

if(!oPlayer.paused){
	// Draw BG
	draw_set_alpha(.5)
	draw_set_color(c_dkgray)
	draw_rectangle(0,
				   0,
				   width,
				   height, false)
	draw_set_alpha(1)
	draw_set_color(c_white)


	// Draw Character Stats
	var party = oPlayer.party
	for(var i = 0; i < array_length(party); i++){
		var member = party[i]
		if(member != -4){
			//Initialize Useful Vars
			var barWidth = width * .9
			var barHeight = height * .05
			var startY = ((height-barHeight)/5 * i) + (height-barHeight*5)/5
			var startX = (width-barWidth)/2
			//Draw Charcter HP
			drawHP(member, i, startX, startY, barWidth, barHeight)
			//Draw Slots
			drawSlots(member, i, startX, startY, barWidth, barHeight)
			//Draw Name
			drawStats(member, i, startX, startY, barWidth)
		}
	}

	// Draw current essence
	drawEssence(width, height)
} else{
	draw_set_color(c_maroon)
	draw_rectangle(0,0,width,height,false)	
	draw_set_color(c_black)
	draw_set_font(fMenu)
	draw_text(width/2, height*.1, "PAUSED")
	draw_set_color(c_white)
}