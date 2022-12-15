extends "res://PowerUps/PowerUp.gd"

func _on_PowerUpArmor_area_entered(area):
	if area.is_in_group("player"):
		area.armor +=1
		print("Número de vidas: ",area.armor)
		Audio.play("powerup",15)
		queue_free()
