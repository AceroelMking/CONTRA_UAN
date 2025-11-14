extends CanvasLayer


func _on_game_controller_player_health_updated(new_player_health: Variant) -> void:
	$HBoxContainer/TextureRect.visible = true if new_player_health >= 3 else false
	$HBoxContainer/TextureRect2.visible = true if new_player_health >= 2 else false
	$HBoxContainer/TextureRect3.visible = true if new_player_health >= 1 else false


func _on_game_controller_time_updated(seconds_left: Variant) -> void:
	$Label.text = str(seconds_left)
