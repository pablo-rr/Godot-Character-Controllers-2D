extends "res://libraries/characterControllers2D/CharacterController2D.gd"

export var max_jumps : int = 1
export var jump_key : String = "ui_accept"
export var gravity_force : float = 20.0
export var jump_force : float = 600.0

onready var gravity : float = 0
onready var jumps = max_jumps

func _physics_process(delta: float) -> void:
	direction = Vector2(0, 1)
	apply_gravity()
	
func _input(event: InputEvent) -> void:
	if(event.is_action_pressed(jump_key) and jumps > 0):
		jump()
	
# regen_jumps() MUST be added in the move function, as it needs to be used while using
# move_and_slide() or move_and_collide() for is_on_floor() to correctly return a value
func move() -> void:
	.move()
	regen_jumps()
	
func apply_gravity() -> void:
	gravity += gravity_force
	speed.y = gravity
	
func regen_jumps() -> void:
	if(is_on_floor()):
		jumps = max_jumps
		
func jump() -> void:
	jumps -= 1
	gravity = -jump_force
