extends Node


func _ready():
	$Player.setup($PlayerPosition.global_position)
	Audio.backgroung_music(true)
