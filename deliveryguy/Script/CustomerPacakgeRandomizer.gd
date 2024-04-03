extends Label

var received_package_data

func _ready():
	# Connect to the global signal emitted by the PackageManager
	Signals.connect("package_data_ready",_on_package_data_ready)
	
	
func _on_package_data_ready(data):
	received_package_data = data
	#print("Customer received package data:", received_package_data)
	self.text = random_package(received_package_data)
	
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
