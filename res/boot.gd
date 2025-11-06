extends Control

@onready var main_menu: PackedScene = preload("res://ui/main_menu.tscn")

func _on_startup_anim_end():
	get_tree().change_scene_to_packed(main_menu)
