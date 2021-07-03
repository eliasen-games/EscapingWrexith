draw_self()

if(fog){
	drawBlockText("@", c_dkgray)
} else if(position_meeting(x,y,oCellOccupier)){
	
} else if(position_meeting(x,y,oCraftingParent) or position_meeting(x,y,oDoor)){
	
} else {
	drawBlockText(".", c_grey)
}