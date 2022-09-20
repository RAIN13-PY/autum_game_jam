extends Node2D

var paused = false
func _process(delta):
	if Input.is_action_just_pressed("pause") and paused == false:
		visible = true
		paused = true
		print("Pause Menu Opened")
	elif Input.is_action_just_pressed("pause") and paused == true:
		visible = false
		paused = false
		print("Pause Menu Closed")
		
