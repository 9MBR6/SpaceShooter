extends "res://enemy/Enemy.gd"

func _ready():
	randomize()
	velocity = Vector2(0, rand_range(400,1000))
	#print(velocity)
