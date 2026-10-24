extends CharacterBody2D
@export var move_speed: float = 200.0

# Used for one-button rotation mode 
var move_direction: Vector2 = Vector2.RIGHT

func _physics_process(_delta: float) -> void:
	if AccessibilitySettings.one_button_mode:
		_handle_one_button_movement()
	else:
		_handle_standard_movement()


func _handle_standard_movement() -> void:
	var input_vector := Input.get_vector("ui_left", "ui_right", "ui_up", "ui_down")
	velocity = input_vector * move_speed
	move_and_slide()
	
func _handle_one_button_movement() -> void:
	# Rotate 90 degrees clockwise on space key / ui accept press
	if Input.is_action_just_pressed("ui_accept"):
		move_direction = move_direction.rotated(PI / 2).snapped(Vector2.ONE)
	velocity = move_direction * move_speed
	move_and_slide()
