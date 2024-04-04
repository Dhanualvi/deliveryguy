extends Control

@onready var high_score_label = $VBoxContainer2/ScorePointText
var high_score = 0


func _ready():
	high_score = Signals.high_score
	high_score_label.text = str(high_score)

func _on_start_button_pressed():
	get_tree().change_scene_to_file("res://Scene/delivery_scene.tscn")
	Engine.time_scale = 1

func _on_quit_button_pressed():
	get_tree().quit()


