extends "res://PowerUps/PowerUp.gd"


export (PackedScene) var scene_shield




func _on_PowerUpShield_area_entered(area):
	if area.is_in_group("player"):
		var shield = scene_shield.instance()
		area.call_deferred("add_child",shield)
		shield.setup(5)
		Audio.play("powerup",15)
		queue_free()
