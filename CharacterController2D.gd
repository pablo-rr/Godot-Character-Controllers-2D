extends KinematicBody2D

export var left_key : String = "ui_left"
export var right_key : String = "ui_right"
export var acceleration : float = 1.0
export var max_x_speed : float = 250.0
export var max_health : int = 100

onready var direction : Vector2 = Vector2.ZERO
onready var speed : Vector2 = Vector2.ZERO
onready var health : int = max_health

func _physics_process(delta: float) -> void:
	physics_process_inputs()
	move()
		
func physics_process_inputs() -> void:
	direction = Vector2(0, 0)
	if(Input.is_action_pressed(left_key)):
		direction.x = -1
	elif(Input.is_action_pressed(right_key)):
		direction.x = 1
		
func move() -> void:
	speed.x = lerp(speed.x, max_x_speed * direction.x, acceleration)
	move_and_slide(speed, Vector2(0, -1))
