# This isn't the most optimal way to handle the player behaviour. But, due
# to the time limitation, this player script will handle everything related to
# the player.

extends CharacterBody2D

@export var max_movement_speed: float = 1000
@export var movement_lerp: float = 2

var movement_direction: Vector2 = Vector2.ZERO

func _process(delta: float) -> void:
	movement_direction = Input.get_vector("Left", "Right", "Up", "Down")

func _physics_process(delta: float) -> void:
	velocity = velocity.lerp(movement_direction * max_movement_speed, 
							movement_lerp * delta)
	move_and_slide()


func _on_area_2d_body_entered(body: Node2D) -> void:
	if body != self:
		GameManager.add_one_score()
		body.queue_free()
