extends "res://PowerUps/PowerUp.gd"

func _on_PowerUpArmor_area_entered(area):
	if area.is_in_group("player"):
		area.armor +=1
		print("Número de vidas: ",area.armor)
		queue_free()
