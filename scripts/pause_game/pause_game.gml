// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function pause_game(){
	paused = !paused
	if(instance_exists(oButtonMenu)){
		instance_destroy(oButtonMaster)	
	} else{
		instance_create_depth(oCamera.x, oCamera.y, oCursor.depth-1, oButtonMenu)
		instance_create_depth(oCamera.x, oCamera.y - oButtonMenu.height*1.25, oCursor.depth-1, oButtonResume)
		instance_create_depth(oCamera.x, oCamera.y + oButtonMenu.height*1.25, oCursor.depth-1, oButtonQuit)
	}
}