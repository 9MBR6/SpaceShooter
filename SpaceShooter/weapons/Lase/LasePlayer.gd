extends "res://weapons/Lase/Lase.gd"


func _on_LasePlayer_area_entered(area):
	if area.is_in_group("enemy"):
		area.armor -=1
		create_flare()
		queue_free()
