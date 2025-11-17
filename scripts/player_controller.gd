extends CharacterBody2D

# State machine
enum State { IDLE, RUNNING, JUMPING, FALLING }
var current_state: State = State.IDLE

# Movement constants (tunable)
const SPEED = 120.0              # Max horizontal speed (pixels/sec)
const ACCELERATION = 800.0        # Horizontal acceleration
const FRICTION = 1000.0          # Deceleration when no input
const GRAVITY = 980.0            # Gravity force (pixels/sec²)
const AIR_CONTROL = 0.8          # Air movement multiplier (0.0-1.0)
const JUMP_VELOCITY = -300.0     # Initial jump force (negative = up)

func _physics_process(delta: float) -> void:
	# Apply gravity when not on floor
	if not is_on_floor():
		velocity.y += GRAVITY * delta

	# Handle jump input
	if Input.is_action_just_pressed("jump") and is_on_floor():
		# Player pressed jump while on ground - apply upward velocity
		velocity.y = JUMP_VELOCITY

	# Variable jump height - release jump early to fall faster
	if Input.is_action_just_released("jump") and velocity.y < 0:
		# Player released jump while still rising - reduce upward velocity
		velocity.y *= 0.5

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

	# Update state machine
	_update_state()

func _update_state() -> void:
	var previous_state = current_state

	# Determine new state based on velocity and floor detection
	if is_on_floor():
		# On ground - check if moving or idle
		if abs(velocity.x) > 5.0:  # Small threshold to prevent jitter
			current_state = State.RUNNING
		else:
			current_state = State.IDLE
	else:
		# In air - check if jumping (rising) or falling
		if velocity.y < 0:
			current_state = State.JUMPING
		else:
			current_state = State.FALLING

	# Play animation based on current state
	_play_animation_for_state()

	# Flip sprite based on movement direction
	if velocity.x != 0:
		$VisualSprite.scale.x = -1 if velocity.x < 0 else 1

	# Debug print when state changes
	if current_state != previous_state:
		print("State changed: ", State.keys()[previous_state], " -> ", State.keys()[current_state])

func _play_animation_for_state() -> void:
	var animation_player = $AnimationPlayer

	match current_state:
		State.IDLE:
			if animation_player.current_animation != "idle":
				animation_player.play("idle")
		State.RUNNING:
			if animation_player.current_animation != "run":
				animation_player.play("run")
		State.JUMPING:
			if animation_player.current_animation != "jump":
				animation_player.play("jump")
		State.FALLING:
			if animation_player.current_animation != "fall":
				animation_player.play("fall")
