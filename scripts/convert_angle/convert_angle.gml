function convert_angle(angle, toDegrees){
	var convertedAngle = -1
	if(toDegrees){
		//Converting to Degrees
		convertedAngle = angle * 180/pi
	} else{
		//Converting to Radians
		convertedAngle = angle * pi/180
	}
	return convertedAngle
}