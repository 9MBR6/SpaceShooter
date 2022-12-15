extends CanvasLayer

onready var score_label = $Control/MarginContainer/HBox/ScoreLable
onready var heart_label = $Control/MarginContainer/HBox/HeartImg/HeartLable
onready var menu_button = $Control/MenuButton

var score = 0 setget set_score

func set_score(value):
	score = value
	score_label.text = str(score)


func _on_Player_heart_change(value):
	heart_label.text = str(value)


func _on_PauseButton_pressed():
	get_tree().paused = not get_tree().paused
	
	if get_tree().paused:
		menu_button.show()
	else:
		menu_button.hide()


func _on_MenuButton_pressed():
	if get_tree().paused:
		get_tree().paused = not get_tree().paused
	get_tree().change_scene("res://HUD/Main.tscn")
