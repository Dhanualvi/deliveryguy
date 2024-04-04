extends CanvasLayer

@onready var point_label = $HBoxContainer/PointLabel
@onready var pause_menu = $PauseMenu
@onready var game_over_menu = $GameOverMenu
@onready var time_label = $HBoxContainer2/TimeLabel

const level_timer = 60
var current_time = 0

func _ready():
	Signals.connect("update_score",update_score)
	current_time = level_timer
	time_label.text = str(current_time)
	

func update_score(current_score):
	point_label.text = str(current_score)

func _on_pause_button_pressed():
	pause_menu.show()
	Engine.time_scale = 0
	

func _on_level_timer_timeout():
	if(current_time>0):
		current_time-=1
		time_label.text = str(current_time)
	else:
		Signals.emit_signal("record_high_score")
		game_over_menu.show()
		Engine.time_scale = 0
		
	
	
