extends Area2D

var received_package_data = []

func _ready():
	# Connect to the global signal emitted by the PackageManager
	Signals.connect("package_data_ready",_on_package_data_ready)
	

func _on_package_data_ready(package_data):
	received_package_data = package_data
	print("Received package data:", received_package_data)

func _on_area_entered(area):
	if area.is_in_group("Player"):
		print("Player Entered Factory")
		#random_package(received_package_data)
		var random_data = random_package(received_package_data)
		Signals.emit_signal("send_package", random_data)
	


func random_package(data):
	if data.size() > 0:
		# Generate a random index within the range of the array's length
		var random_index = randi() % data.size()
		print("Index: ", random_index)
		print("Data size: ", data.size())
		# Access the element at the random index to get the random data
		var random_data = data[random_index]
		print("Random Factory package:", random_data)
		return random_data
