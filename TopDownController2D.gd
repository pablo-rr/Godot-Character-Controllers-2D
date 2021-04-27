extends "CharacterController2D.gd"

export var up_key : String = "ui_up"
export var down_key : String = "ui_down"
export var look_at_mouse : bool = true

onready var max_y_speed : float = max_x_speed

func _physics_process(delta: float) -> void:
	look_at(get_global_mouse_position())

func physics_process_inputs() -> void:
	.physics_process_inputs()
	if(Input.is_action_pressed(up_key)):
		direction.y = -1
	elif(Input.is_action_pressed(down_key)):
		direction.y = 1
		
	direction = direction.normalized()

func move() -> void:
	speed.y = lerp(speed.y, max_y_speed * direction.y, acceleration)
	.move()
