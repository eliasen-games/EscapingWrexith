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

//Round to Whole Number
//if(input.in[IN.select]){
	var essence_cost =  es_percent * oPlayer.xp
	var ec_decimal = frac(essence_cost)
	show_debug_message(ec_decimal)
	if(ec_decimal != 0){
		if(ec_decimal < .5){
			essence_cost -= ec_decimal	
		} else {
			essence_cost += (1-ec_decimal)
		}
	}
	show_debug_message(essence_cost)
	es_percent = essence_cost/oPlayer.xp
	x = (es_percent-.5)*width + anchor.x
//}