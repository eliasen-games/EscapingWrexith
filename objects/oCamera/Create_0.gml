depth = 200
followDefault = noone
follow = followDefault
zoomScaler = .1
camWidth = 1920
camHeight = 1080
camMaxWidth = sprite_get_height(sCell) * 45
camMaxHeight = sprite_get_height(sCell) * 22.5
camMinWidth = sprite_get_height(sCell) * 16
camMinHeight = sprite_get_height(sCell) * 9
camSpeed = 8

camera = camera_create()
var vm  = matrix_build_lookat(x,y,-100, 
							  x,y,0,
							  0,1,0)
var pm = matrix_build_projection_ortho(camWidth, camHeight, 1, 999999)

camera_set_view_mat(camera, vm)
camera_set_proj_mat(camera, pm)

view_camera[0] = camera

resetPosition = true
xTo = 0
yTo = 0

instance_create_depth(x,y,700,oBG)
instance_create_depth(x,y,depth, oUIController)