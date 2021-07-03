draw_set_font(fEntity)
if(touching){
	drawBlockText("[ ]", c_orange)
} else{
	drawBlockText("[]", c_orange)
}

if(discovered){
	if(playerProx){
		draw_set_color(c_lime)
	} else{
		draw_set_color(c_orange)
	}
	draw_circle(x,y,range,true)
	draw_set_color(c_white)
}