event_inherited()

if(doAction or input.in[IN.confirm]){
	swap_item(instance_nearest(item.x,item.y,oCharacter), item)
	instance_destroy()
}