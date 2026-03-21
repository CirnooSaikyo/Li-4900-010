extends CharacterBody2D


const SPEED = 300.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	# Add the gravity.

	# Handle jump.
	if Input.is_action_just_pressed("ui_accept") and is_on_floor():
		velocity.y = JUMP_VELOCITY

	# Get the input direction and handle the movement/deceleration.
	# As good practice, you should replace UI actions with custom gameplay actions.
	var direction := Input.get_axis("ui_left", "ui_right")
	if direction:
		velocity.x = direction * SPEED
	else:
		velocity.x = move_toward(velocity.x, 0, SPEED)

	move_and_slide()


var attack_held := false

func _process(_delta: float) -> void:
	if Input.is_action_just_pressed("attack"):
		attack_held = true
		print("Attack!!")

	if Input.is_action_just_released("attack"):
		attack_held = false
		print("ATTACK RELEASED")

	if attack_held:
		print("ATTACK HELD")

	var move := Input.get_vector("move_left", "move_right", "move_up", "move_down")
	if move != Vector2.ZERO:
		print("MOVE ", move)
