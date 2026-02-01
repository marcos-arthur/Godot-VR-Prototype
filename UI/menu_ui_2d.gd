extends Control

func _input(event):
	if event is InputEventMouseMotion:
		# Move our cursor
		var mouse_motion : InputEventMouseMotion = event
		$Cursor.position = mouse_motion.position - Vector2(16, 16)

func _on_button_pressed() -> void:
	get_tree().change_scene_to_file("res://level/world/world.tscn")


func _on_button_2_pressed() -> void:
	get_tree().quit()


func _on_button_3_pressed() -> void:
	get_tree().change_scene_to_file("res://level/world_hand_tracking/world.tscn")
