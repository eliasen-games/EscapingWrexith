if(!picked_up){
	var nearChar = instance_nearest(x,y,oCharacter)
	if(position_meeting(x,y,nearChar) and button = noone){
		button = instance_create_depth(x,y-sprite_get_height(sCell), depth-1, oButtonGrabItem)
		button.item = id
		
	} else if(!position_meeting(x,y,nearChar)){
		instance_destroy(button)
		button = noone
	}
}