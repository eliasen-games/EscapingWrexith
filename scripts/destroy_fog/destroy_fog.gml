// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function destroy_fog(centerX, centerY, visibility){
	var cellH = sprite_get_height(sCell)/2
	
	//General Line of Sight
	var degreeStep = 2
	for(var degree = 0; degree < 360; degree += degreeStep){
		var radAngle = convert_angle(degree, false)
		var xChange = cos(radAngle) * cellH
		var yChange = sin(radAngle) * cellH
		var cellsChecked = 1
		while(true){
			if(position_meeting(centerX + xChange * cellsChecked, centerY + yChange * cellsChecked, oFog)){
				var fogToDestroy = instance_nearest(centerX + xChange * cellsChecked, centerY + yChange * cellsChecked, oFog)	
				instance_destroy(fogToDestroy)
			}
			cellsChecked++
			if(position_meeting(centerX + xChange * cellsChecked, centerY + yChange * cellsChecked, oWall) or cellsChecked >= visibility*2){
				break	
			}
		}
	}
	//4 cardinal directions
	for(var i = 0; i < 4; i++){
		for(var cells = 0; cells <= visibility; cells++){
			var checkX = cos(convert_angle(i*90, false)) * cells * cellH * 2
			var checkY = sin(convert_angle(i*90, false)) * cells * cellH * 2
			if(position_meeting(checkX, checkY, oFog)){
				var fogToDestroy = instance_nearest(checkX, checkY, oFog)
				instance_destroy(fogToDestroy)
			}
			if(position_meeting(checkX, checkY, oWall)){
				break;	
			}
		}
	}
	
}