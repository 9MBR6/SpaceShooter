extends Area2D


export var velocity = Vector2()
export var armor = 4 setget _set_armor

func _set_armor(value):
	pass

func _physics_process(delta):
	translate(velocity*delta)
	
	if position.y -32 >= Utils.view_size.y:
		queue_free()
