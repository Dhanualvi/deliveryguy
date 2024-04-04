extends Control

@onready var high_score_text = $VBoxContainer/score/pointText


func _ready():
	hide()
	Signals.connect("update_high_score", updata_high_score)


func updata_high_score(score):
	if(Signals.high_score <= score):
		Signals.high_score = score
	high_score_text.text = str(score)


func _on_main_menu_button_pressed():
	
	get_tree().change_scene_to_file("res://Scene/main_menu.tscn")


func _on_quit_button_pressed():
	get_tree().quit()
