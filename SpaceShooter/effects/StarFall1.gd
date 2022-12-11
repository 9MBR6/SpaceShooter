extends Sprite


export var velocity = Vector2()

func _process(delta):
	translate(velocity * delta)
	if position.y >= 1280:
		print("1 estrella")
		position.y = -1276
