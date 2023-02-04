extends RigidBody2D

@export var sensitivity:float = 0.01

func _ready():
	pass

func _process(delta):
	pass

# calculates and applys movement based on swipe
func calculate_swipe(swipe_end):
	var swipe = swipe_end
	self.apply_central_impulse(swipe*sensitivity)

func _unhandled_input(event):
	# touch controls
	if event is InputEventScreenDrag:
		calculate_swipe(event.relative)
	
	# mouse controls
	if Input.is_action_pressed("mouse_touch") and event is InputEventMouseMotion:
		calculate_swipe(event.relative)
