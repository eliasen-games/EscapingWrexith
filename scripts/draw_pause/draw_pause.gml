// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function draw_pause(width, height){
	draw_set_color(c_maroon)
	draw_rectangle(display_get_gui_width(),0,display_get_gui_width()-width,height,false)	
	draw_set_color(c_black)
	draw_set_font(fMenu)
	draw_text(display_get_gui_width()-width/2, height*.1, "PAUSED")
	draw_set_color(c_white)
}