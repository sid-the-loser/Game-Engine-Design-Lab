# Debug manager makes sure to deal with debug inputs and shows you debug info 
# in-game

extends Node

var debug_mode = false

func _process(delta: float) -> void:
	if Input.is_action_just_released("DebugToggle"):
		debug_mode = !debug_mode
	
	elif Input.is_action_just_released("BacktoMainMenu"):
		get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
