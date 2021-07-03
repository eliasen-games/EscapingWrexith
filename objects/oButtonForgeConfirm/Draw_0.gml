event_inherited();

draw_set_halign(fa_left)
if(instance_exists(oPlayer) and instance_exists(slider)){
	draw_text(x - width/2 * 1.25 * .9,
		      y + height + height/2 * .8,
		      "Bonus: " + string(slider.es_percent * oPlayer.xp/100))
} else{
	draw_text(x - width/2 * 1.25 * .9,
		      y + height + height/2 * .8,
		      "Bonus: " + string(slider.es_percent))
}