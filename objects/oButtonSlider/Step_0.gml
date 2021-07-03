if(input.in[IN.select_hold] and abs(y-mouse_y) <= height and abs(x-mouse_x) <= width/1.5){
	oPlayer.clickable = false
	if(abs(anchor.x - x) <= width/2){
		x -= (x-mouse_x)/slide_speed
		if(x <= anchor.x - width/2){
			x = anchor.x - width/2 + 1
		}
		if(x >= anchor.x + width/2){
			x = anchor.x + width/2 - 1
		}
	}
}
if(input.in[IN.select]){
	oPlayer.clickable = true	
}
es_percent = .5 - (anchor.x - x)/width