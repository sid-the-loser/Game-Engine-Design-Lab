# Manages all the global things related to the game

extends Node

var player_score = 0

func add_one_score() -> void:
	player_score += 1
	
func reset_score() -> void:
	player_score = 0
