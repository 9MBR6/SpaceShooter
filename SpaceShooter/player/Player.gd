extends Area2D

func _input(event):
	if event is InputEventScreenDrag:
		#position = event.position
		translate(event.relative)
	
	var pos = position
	pos.x = clamp(pos.x, 64, Utils.view_size.x -64)
	pos.y = clamp(pos.y, 64, Utils.view_size.y -64)
	position = pos
