extends Area2D


export var velocity = Vector2()

func _process(delta):
	translate(velocity * delta)
	
	if position.y >= Utils.view_size.y +14:
		queue_free()


