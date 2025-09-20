extends Control


@onready var label: Label = $VBoxContainer/Label


func _ready() -> void:
	label.text = "Score: " + str(GameManager.get_score())
	

func _on_retry_button_down() -> void:
	GameManager.reset_score()
	get_tree().change_scene_to_file("res://scenes/gameplay.tscn")


func _on_main_menu_button_down() -> void:
	GameManager.reset_score()
	get_tree().change_scene_to_file("res://scenes/main_menu.tscn")
