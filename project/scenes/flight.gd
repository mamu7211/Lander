extends Node2D

# Declare member variables here. Examples:
# var a = 2
# var b = "text"

# Called when the node enters the scene tree for the first time.
func _ready():
	pass # Replace with function body.

# Called every frame. 'delta' is the elapsed time since the previous frame.
#func _process(delta):
#	pass

func _physics_process(delta):
	var motion = Vector2()
	
	if Input.is_action_pressed("move_up"):
		$rocket.apply_central_impulse(Vector2(0, -10))
	if Input.is_action_pressed("rotate_left"):
		$rocket.apply_torque_impulse(-5)
	if Input.is_action_pressed("rotate_right"):
		$rocket.apply_torque_impulse(5)

