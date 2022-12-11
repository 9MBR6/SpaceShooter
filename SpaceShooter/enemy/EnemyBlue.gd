extends "res://enemy/Enemy.gd"

func _ready():
	randomize()
	velocity.x = Utils.choice_list([velocity.x, -velocity.x])

func _physics_process(delta):
	if position.x <= 64:
		velocity.x = abs(velocity.x)
	if position.x >= Utils._get_view_size().x -64:
		velocity.x = -abs(velocity.x)
