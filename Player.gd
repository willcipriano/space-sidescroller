extends KinematicBody2D

func _process(delta):
	
	var mouse_pos : Vector2 = get_viewport().get_mouse_position()
	global_position.y = lerp(global_position.y, mouse_pos.y, 0.2)
	global_position.x = lerp(global_position.x, mouse_pos.x, 0.2)
