extends Area2D


var speed = 100
var velocity = Vector2()

func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	velocity = velocity.normalized()
	global_position.x = clamp(global_position.x,0, 1024)
	global_position.y = clamp(global_position.y,0, 600)
	global_position += speed * velocity * delta
