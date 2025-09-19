# This isn't the most optimal way to handle the player behaviour. But, due
# to the time limitation, this player script will handle everything related to
# the player.

extends CharacterBody2D

@export var max_movement_speed: float = 1000
@export var movement_lerp: float = 2

var movement_direction: Vector2 = Vector2.ZERO

func _physics_process(delta: float) -> void:
	velocity = velocity.lerp(movement_direction, movement_lerp * delta)
