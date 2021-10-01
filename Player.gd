extends KinematicBody2D

var bullet : PackedScene = preload("res://Player_bullet.tscn")

signal create_bullet(bullet, location)
	

func _process(delta):
	
	var mouse_pos : Vector2 = get_viewport().get_mouse_position()
	global_position.y = lerp(global_position.y, mouse_pos.y, 0.2)
	
	if Input.is_action_just_pressed("shoot"):
		emit_signal("create_bullet", bullet, global_position)
