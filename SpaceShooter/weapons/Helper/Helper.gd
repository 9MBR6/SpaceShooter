extends Node2D

export (PackedScene) var scene_laser

func setup(time_left):
	$Timer.wait_time = time_left

func create_Laser(pos):
	var laser = scene_laser.instance()
	laser.position = pos
	Utils.main_node.call_deferred("add_child", laser)

func shoot():
	create_Laser($LaserCenter.global_position)
	create_Laser($LaserLeft.global_position)
	create_Laser($LaserRigth.global_position)

func _on_ShootTimer_timeout():
	shoot()

func _on_Timer_timeout():
	queue_free()
