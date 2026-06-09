extends Control


func _unhandled_input(event):
	if event.is_action_pressed("ui_cancel"):
		if visible:
			visible = false
			Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
			get_tree().paused = false
			get_viewport().set_input_as_handled()


func _on_exit_button_pressed() -> void:
	get_tree().quit()


func _on_restart_button_pressed() -> void:
	Input.mouse_mode = Input.MOUSE_MODE_CAPTURED
	get_tree().paused = false
	get_tree().reload_current_scene()
