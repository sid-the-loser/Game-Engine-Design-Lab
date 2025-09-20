# Manages all the global things related to the game

extends Node

var player_score: int = 0

func add_one_score() -> void:
	player_score += 1
	if player_score >= 3:
		get_tree().change_scene_to_file("res://scenes/win_scene.tscn")
	
func reset_score() -> void:
	player_score = 0
	
func get_score() -> int:
	return player_score
