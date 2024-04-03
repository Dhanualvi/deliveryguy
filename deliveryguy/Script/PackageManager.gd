extends Node2D

var file = FileAccess.open("res://resource/packages.csv",FileAccess.READ)


func _ready():
	var package_data = import_packages()
	Signals.emit_signal("package_data_ready", package_data)
	

func import_packages():
	var package_data = []
	while !file.eof_reached(): 
		var data_set = file.get_csv_line()
		for package in data_set:
			package_data.append(package)
	
	file.close()
	print("Packages:", package_data) 
	return package_data
