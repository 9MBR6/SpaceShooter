extends Sprite


func _ready():
	randomize()
	rotation_degrees = rand_range(0,360)
	Audio.play("explosion",15)
