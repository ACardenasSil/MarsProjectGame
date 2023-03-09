extends KinematicBody2D

const ACCELERATION = 100000
const MAX_SPEED = 20000
const FRICTION = 10000

onready var animatedSprite = $Astronaut

var velocity = Vector2.ZERO

func _physics_process(delta):
	# Initialize empty vector
	var input_vector = Vector2.ZERO
	# Set movement values using keyboard
	input_vector.x = Input.get_action_strength("ui_right") - Input.get_action_strength("ui_left")
	input_vector.y = Input.get_action_strength("ui_down") - Input.get_action_strength("ui_up")
	input_vector = input_vector.normalized()
 
	if(input_vector.x != 0 || input_vector.y != 0):
		animatedSprite.animation = "walking"
	else:
		animatedSprite.animation = "idle"

	if input_vector != Vector2.ZERO:
		velocity += input_vector * ACCELERATION * delta
		velocity = velocity.clamped(MAX_SPEED * delta)
	else:
		velocity = velocity.move_toward(Vector2.ZERO, FRICTION * delta)

	move_and_slide(velocity)
