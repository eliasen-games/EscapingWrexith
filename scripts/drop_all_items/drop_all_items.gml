// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function drop_all_items(origX, origY){
	//Find Empty Cells
	var free_cells = []
	var cellH = sprite_get_height(sCell)
	var rings_checked = 0
	while(array_length(free_cells) < 5){
		with(oCell){
			//Check if cell is in range
			if(point_distance(x,y,origX,origY) <= (cellH * rings_checked)){
				//Check if cell is empty
				if(is_cell_empty(x,y)){
					array_push(free_cells, id)	
				}
			}
		}
		//Increment ring radius
		rings_checked++
	}
	
	//Choose an empty cell to throw items in
	drop_item(armor_slot,      free_cells[0].x, free_cells[0].y)
	drop_item(consumable_slot, free_cells[1].x, free_cells[1].y)
	drop_item(magic_slot,      free_cells[2].x, free_cells[2].y)
	drop_item(weapon_slot,     free_cells[3].x, free_cells[3].y)
}