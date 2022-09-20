extends Area2D


var speed = 200
var velocity = Vector2()

func _process(delta):
	velocity.x = int(Input.is_action_pressed("move_right")) - int(Input.is_action_pressed("move_left"))
	velocity.y = int(Input.is_action_pressed("move_down")) - int(Input.is_action_pressed("move_up"))
	velocity = velocity.normalized()
	global_position.x = clamp(global_position.x,0, 1024)
	global_position.y = clamp(global_position.y,0, 600)
	global_position += speed * velocity * delta
	if Global.health <= 0:
		queue_free()


func _on_Player_area_entered(area):
	if area.is_in_group("Enemy"): # Add {and} to add other objects to the list
		print("Player Hit:" + area.get_name() + ": and did 1 damage") # debug
		area.queue_free()  # deletes area on impact for more realism. We should make a particle for this death so it looks smoother
		Global.health -= 1 
