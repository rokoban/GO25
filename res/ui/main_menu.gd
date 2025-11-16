extends Control

func _ready() -> void:
	pass

func start_game():
	get_tree().change_scene_to_file("res://levels/game_root.tscn")

func quit_game():
	get_tree().quit()


func _on_new_game_button_pressed() -> void: start_game()
func _on_exit_button_pressed() -> void: quit_game()
