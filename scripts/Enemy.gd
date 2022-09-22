extends KinematicBody2D
var speed = 100
var velocity = Vector2()
var player_found = false
var health = 1
func _process(delta):
	if health <= 0:
		queue_free()
	if player_found:
		move(delta)
func move(delta):
	velocity = global_position.direction_to(Global.player.global_position)
	global_position += velocity * speed * delta
func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"):
		player_found = true


func _on_Area2D_area_exited(area):
	if area.is_in_group("Player"):
		player_found = false


func _on_Hitbox_area_entered(area):
	if area.is_in_group("Player"):
		Global.health -= 1
		queue_free()
	elif area.is_in_group("Sword"):
		health -= 1
		Global.Player_points += round(rand_range(1,10))
