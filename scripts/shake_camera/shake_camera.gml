// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function shake_camera(shakeFrames, maxFrames, frequency, intensity, dir){
	if(shakeFrames mod frequency == 0){
		if(shakeFrames mod (frequency * 2) == 0){
			intensity *= -1
		}
		if(dir == 0){
			oCamera.x += intensity * shakeFrames/maxFrames
		} else if (dir == 1){
			oCamera.y += intensity * shakeFrames/maxFrames
		} else if (dir == 2){
			oCamera.x += intensity * shakeFrames/maxFrames * irandom_range(-1, 1)
			oCamera.y += intensity * shakeFrames/maxFrames * irandom_range(-1, 1)
		}
	}
}