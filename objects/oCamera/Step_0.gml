if(resetPosition){
	xTo = oPlayer.selected_character.x
	yTo = oPlayer.selected_character.y
	x = oPlayer.selected_character.x
	y = oPlayer.selected_character.y
	resetPosition = false
}

//CameraZoom
camera_zoom()

//Manually Move Camera
if(input.in[IN.up]){
	yTo -= camSpeed	
}
if(input.in[IN.down]){
	yTo += camSpeed	
}
if(input.in[IN.left]){
	xTo -= camSpeed	
}
if(input.in[IN.right]){
	xTo += camSpeed	
}

//Reposition Camera
x += (xTo-x)/5
y += (yTo-y)/5

//Rebuild Matricies
rebuild_matricies()