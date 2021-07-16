// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function set_camera_shake(shakeFrames, maxFrames, frequency, intensity, dir){
	oCamera.shakeFrames    = shakeFrames
	oCamera.maxShakeFrames = maxFrames
	oCamera.shakeFrequency = frequency
	oCamera.shakeIntensity = intensity
	oCamera.shakeDirection = dir
}