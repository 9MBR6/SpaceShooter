extends Area2D

export var velocity = Vector2()
export var armor = 4 setget _set_armor
export (PackedScene) var explosion

func _set_armor(value):
	if value < armor:
		Audio.play("hit_enemy",15)
	armor = value
	if armor <=0:
		destroy()

func destroy():
	var explo = explosion.instance()
	explo.position = position
	Utils.main_node.add_child(explo)
	Utils.main_node.get_node("GameHUD").score +=5
	print("enemigo eliminado")
	queue_free()

func _physics_process(delta):
	translate(velocity*delta)
	
	if position.y -32 >= Utils.view_size.y:
		queue_free()


func _on_Enemy_area_entered(area):
	if area.is_in_group("shields"):
		destroy()
		print("Colisión con enemigo no se sufrieron daños")
	
	if area.is_in_group("player"):
		area.armor-=1
		destroy()
		print("Colisión con enemigo")
