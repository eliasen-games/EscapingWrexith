draw_self()

if(fog){
	drawBlockText("@", c_dkgray)
} else if(is_cell_empty(x,y)){
	drawBlockText(".", c_dkgrey)
}