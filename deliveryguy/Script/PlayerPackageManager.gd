extends Label

var received_package

func _ready():
	# Connect to the global signal emitted by the PackageManager
	Signals.connect("send_package",_on_package_send)

func _on_package_send(data):
	received_package = data
	print("Player received data: ",received_package)
	self.text = received_package

#func _on_area_2d_area_entered(area):
#	if area.is_in_group("Customer"):
#		print("Collide with customer")
#	elif area.is_in_group("PackageFactory"):
#		print ("Collide with packageFactory")
