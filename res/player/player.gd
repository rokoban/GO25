extends CharacterBody3D

@export var speed: float = 10
#@export var gravity: float = 8

var desired_direction: Vector2

func _process(delta: float) -> void:
	desired_direction = Input.get_vector("left", "right", "fwd", "bkd")

func _physics_process(delta: float) -> void:
	resolve_player_motion()

func resolve_player_motion() -> void:
	var flat_vel = (desired_direction * speed)
	velocity = Vector3(flat_vel.x, 0, flat_vel.y)
	#velocity += Vector3.DOWN * gravity * delta
	move_and_slide()
	
func resolve_camera_motion() -> void:
	pass
	
