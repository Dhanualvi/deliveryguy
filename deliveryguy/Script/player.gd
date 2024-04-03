extends CharacterBody2D

const SPEED = 500.0

func _physics_process(delta):
	# Get the input direction for horizontal movement
	var horizontal_direction = Input.get_axis("ui_left", "ui_right")
	
	# Get the input direction for vertical movement
	var vertical_direction = Input.get_axis("ui_up", "ui_down")
	
	# Horizontal movement
	if horizontal_direction:
		velocity.x = horizontal_direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)
		
	# Vertical movement
	if vertical_direction:
		velocity.y = vertical_direction * SPEED
	else:
		velocity.y = move_toward(velocity.y, 0, SPEED)
		
	# Move the character
	move_and_slide()



