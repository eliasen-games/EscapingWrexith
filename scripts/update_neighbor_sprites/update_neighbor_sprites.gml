// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function update_neighbor_sprites(){
	for(var i = 0; i < 3; i++){
		for(var j = 0; j < 3; j++){
			if(!(i==1 and j==1)){
				var neighbor = neighbors[i,j]
				with neighbor{
					neighbors = get_fog_neighbors()
					update_fog_sprite()
				}
			}
		}	
	}
}