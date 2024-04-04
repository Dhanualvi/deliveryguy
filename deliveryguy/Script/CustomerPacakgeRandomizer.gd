extends Label

var received_package_data
var randomized_package


func _ready():
	# Connect to the global signal emitted by the PackageManager
	Signals.connect("package_data_ready",_on_package_data_ready)
	Signals.connect("package_matched",respawn_package)
	
func _on_package_data_ready(data):
	received_package_data = data
	randomized_package = random_package(received_package_data)
	#print("Customer received package data:", received_package_data)
	self.text = randomized_package
	
func random_package(data):
	if data.size() > 0:
		# Generate a random index within the range of the array's length
		var random_index = randi() % data.size()
		#print("Index: ", random_index)
		#print("Data size: ", data.size())
		# Access the element at the random index to get the random data
		var random_data = data[random_index]
		print("Random customer package:", random_data)
		return random_data

func respawn_package():
	print("respawn package !")
	randomized_package = random_package(received_package_data)
	self.text = randomized_package


func _on_timer_timeout():
	respawn_package()
