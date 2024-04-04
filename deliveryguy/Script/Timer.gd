extends Timer

func _ready():
	#Signals.connect("package_matched",reset_timer)
	pass

func reset_timer():
	print("This customer waiting time reset")
	start()
