if(abs(mouse_x - x) < width/2 and abs(mouse_y-y) < height/2){
	selected = true	
} else{
	selected = false	
}

if(selected and input.in[IN.select]){
	doAction = true
}