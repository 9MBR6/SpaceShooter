extends Node


export (Array, PackedScene) var powerups

func spawn():
	randomize()
	var power = Utils.choice_list(powerups).instance()
	var pos = Vector2()
	
	pos.x = rand_range(14, Utils.view_size.x-14)
	pos.y -14
	power.position = pos
	
	add_child(power)

func _on_Timer_timeout():
	spawn()
	randomize()
	$Timer.wait_time = rand_range(5,10)
