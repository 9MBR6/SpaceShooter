extends Area2D

signal heart_change

export (PackedScene) var scene_player_laser
export (PackedScene) var colision_player
export (PackedScene) var explosionPlayer

export (int) var armor = 4 setget _set_armor

func setup(pos):
	position = pos

func destroy():
	var explo = explosionPlayer.instance()
	explo.position = position
	Utils.main_node.add_child(explo)
	print("player eliminado")
	queue_free()

func _input(event):
	if event is InputEventScreenDrag:
		#position = event.position
		translate(event.relative)
	
	var pos = position
	pos.x = clamp(pos.x, 64, Utils.view_size.x -64)
	pos.y = clamp(pos.y, 64, Utils.view_size.y -64)
	position = pos

func create_Laser(pos):
	var laser = scene_player_laser.instance()
	laser.position = pos
	Utils.main_node.call_deferred("add_child", laser)

func shoot():
	create_Laser($Cannons/LeftCannon.global_position)
	create_Laser($Cannons/RightCannon.global_position)

func _set_armor(value):
	
	if value < armor:
		Audio.play("hit_ship",15)
		Utils.main_node.add_child(colision_player.instance())
	
	armor = value
	emit_signal("heart_change", value)
	
	if armor <= 0:
		destroy()

func _on_ShootTimer_timeout():
	shoot()
