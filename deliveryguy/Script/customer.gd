extends Node2D

#@export var customer_id = 1
@onready var package_label = $PackageLabel
var requested_package

func _on_area_2d_area_entered(area):
	requested_package = package_label.randomized_package
	print("Customer pakcage: ", requested_package)
	Signals.emit_signal("package_arrived", requested_package)
	#print("player collide")
