if(input.in[IN.select_hold]){
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

es_percent = .5 - (anchor.x - x)/width