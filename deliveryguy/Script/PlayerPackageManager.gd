extends Label

var received_package

func _ready():
	# Connect to the global signal emitted by the PackageManager
	Signals.connect("send_package",_on_package_send)
	Signals.connect("package_arrived",check_package)
	self.text = " "

func _on_package_send(data):
	received_package = data
	print("Player received data: ",received_package)
	Signals.emit_signal("play_pickup_sound","pick_up_sound")
	self.text = received_package

func check_package(package):
	if(received_package == package):
		received_package = " "
		self.text = received_package
		Signals.emit_signal("package_matched")
		Signals.emit_signal("add_score")
		Signals.emit_signal("play_add_score_sound","add_point_sound")
		
	else:
		print("Wrong package !")

