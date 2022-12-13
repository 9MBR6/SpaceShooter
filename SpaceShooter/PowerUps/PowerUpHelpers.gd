extends "res://PowerUps/PowerUp.gd"


export (PackedScene) var scene_helper


func _on_PowerUpHelpers_area_entered(area):
	if area.is_in_group("player"):
		var helper = scene_helper.instance()
		area.call_deferred("add_child",helper)
		helper.setup(5)
		queue_free()
