// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function delete_blocked_cells(){
	with(oCell){
		if(place_meeting(x,y,oWall)){
			instance_destroy()	
		}
	}
}