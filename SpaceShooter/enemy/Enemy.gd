extends Area2D

#esto es solo una prueba para ver sis e sube a github correctamente!!!!!

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


func _on_Enemy_area_entered(area):
	if area.is_in_group("shields"):
		queue_free()
		print("Colisión con enemigo no se sufrieron daños")
	
	if area.is_in_group("player"):
		area.armor-=1
		queue_free()
		print("Colisión con enemigo")
