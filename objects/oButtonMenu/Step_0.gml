event_inherited()

if(doAction){
	room_goto(rMenu)
	delete_persistent_objects()
	audio_play_sound(soundClick1, 11, false)
	instance_destroy(oButtonMaster)
}