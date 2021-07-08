var nearChar = instance_nearest(x,y,oCharacter)
if(position_meeting(x,y,nearChar)){
	oPlayer.xp += 15
	instance_destroy()
}