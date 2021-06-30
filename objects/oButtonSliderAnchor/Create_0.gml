slide_bounds = "________________"
width = string_width(slide_bounds)
height = string_height(slide_bounds)

slider = instance_create_depth(x,y,depth-1,oButtonSlider)
slider.width = width
slider.anchor = id
slider.es_percent = .5