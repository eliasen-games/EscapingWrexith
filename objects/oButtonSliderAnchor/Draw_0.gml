draw_set_font(fButtons)
//Draw Backing
draw_set_color(c_dkgray)
draw_set_alpha(.8)
draw_rectangle(x - width/2 * 1.25, 
			   y - height * 1.25-height/2, 
			   x + width/2 * 1.25, 
			   y + height * 1.2-height/2, 
			   false)
draw_set_alpha(1)
draw_set_color(c_black)

//Draw Slide Bounds
drawBlockText(slide_bounds, c_aqua)

//Draw Essence Usage
draw_set_halign(fa_left)
draw_set_valign(fa_top)
if(instance_exists(oPlayer) and instance_exists(slider)){
	draw_text(x - width/2 * 1.25 * .9,
		      y - height * 1.25-height/2 * .9,
		      "Essence: " + string(slider.es_percent * oPlayer.xp))
} else{
	draw_text(x - width/2 * 1.25 * .9,
		      y - height * 1.25-height/2 * .9,
		      "Essence: " + string(slider.es_percent))
}
draw_set_halign(fa_center)
draw_set_valign(fa_middle)