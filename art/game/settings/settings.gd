extends TextureButton

@onready var panel = $"../Panel"
const player_info = preload("res://game/player/player_info.tres")


func _on_pressed():
	panel.visible = not panel.visible


func _on_save_game_pressed():
	player_info.position = get_node("/root/main/player").position
	ResourceSaver.save(player_info, "res://game/player/player_info.tres")
	get_tree().change_scene_to_file("res://game/start/game_start.tscn")
