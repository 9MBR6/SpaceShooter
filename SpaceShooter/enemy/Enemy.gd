extends Area2D


export var velocity = Vector2()
export var armor = 4 setget _set_armor

func _set_armor(value):
	armor = value
	if armor <=0:
		queue_free()
		print("enemigo eliminado")

func _physics_process(delta):
	translate(velocity*delta)
	
	if position.y -32 >= Utils.view_size.y:
		queue_free()
