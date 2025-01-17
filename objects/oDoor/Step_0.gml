var nearChar = instance_nearest(x,y,oCharacter)
var party = oPlayer.party
playerProx = true
for(var i = 0; i < array_length(party); i++){
	var member = party[i]
	if(member != -4){
		var dist = point_distance(member.x, member.y, x, y)
		if(dist > range){
			playerProx = false
			break
		}
	}
}
touching = instance_exists(nearChar) and (x-nearChar.x==0) and (y-nearChar.y==0)
if(touching and createButtons){
	instance_create_depth(x, y-sprite_get_height(sCell)/1.5, depth, oButtonDecendConfirm)
	createButtons = false
} else if(!touching and !createButtons){
	instance_destroy(oButtonDecendConfirm)
	createButtons = true
}

if(instance_nearest(x,y,oCell).fog == false){
	discovered = true
}

if(discovered != lastdiscovered){
	destroy_fog(x,y,range/sprite_get_width(sCell)+2)
}

lastdiscovered = discovered