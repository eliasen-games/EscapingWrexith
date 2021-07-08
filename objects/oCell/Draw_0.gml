draw_self()

if(fog){
	drawBlockText("@", c_dkgray)
} else if(position_meeting(x,y,oCellOccupier)){
	
} else if(position_meeting(x,y,oCraftingParent) or position_meeting(x,y,oDoor)){
	
} else if(position_meeting(x,y,oEssenceJar)){
	
} else {
	drawBlockText(".", c_dkgrey)
}