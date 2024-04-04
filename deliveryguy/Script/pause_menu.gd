extends Control
# Called when the node enters the scene tree for the first time.
func _ready():
	hide()

func _on_resume_button_pressed():
	hide()
	Engine.time_scale = 1

func _on_exit_button_pressed():
	get_tree().quit()

func _on_main_menu_button_pressed():
	get_tree().change_scene_to_file("res://Scene/main_menu.tscn")
