extends Node2D

@export var score_point = 100

var current_score = 0
var highest_score = 0

# Called when the node enters the scene tree for the first time.
func _ready():
	Signals.connect("add_score", add_score)
	Signals.connect("record_high_score",record_high_score)
	
	Signals.emit_signal("update_score", current_score)
	

func add_score():
	print("Package delivered, Add score!")
	current_score +=score_point
	Signals.emit_signal("update_score", current_score)
	
func record_high_score():
	highest_score = current_score
	Signals.emit_signal("update_high_score", highest_score)

