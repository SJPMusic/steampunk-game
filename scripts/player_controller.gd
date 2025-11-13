extends CharacterBody2D

# Movement constants (tunable)
const SPEED = 120.0              # Max horizontal speed (pixels/sec)
const ACCELERATION = 800.0        # Horizontal acceleration
const FRICTION = 1000.0          # Deceleration when no input
const GRAVITY = 980.0            # Gravity force (pixels/sec²)
const AIR_CONTROL = 0.8          # Air movement multiplier (0.0-1.0)

func _physics_process(delta: float) -> void:
	# Apply gravity when not on floor
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Get horizontal input direction (-1 for left, 1 for right, 0 for none)
	var input_direction = Input.get_axis("move_left", "move_right")

	# Apply acceleration or deceleration based on input
	if input_direction != 0:
		# Player is pressing left or right
		var acceleration_rate = ACCELERATION
		if not is_on_floor():
			# Reduce acceleration while in air
			acceleration_rate *= AIR_CONTROL

		# Accelerate toward max speed in the input direction
		velocity.x = move_toward(velocity.x, input_direction * SPEED, acceleration_rate * delta)
	else:
		# No input - apply friction to decelerate
		velocity.x = move_toward(velocity.x, 0, FRICTION * delta)

	# Execute movement with collision detection
	move_and_slide()
