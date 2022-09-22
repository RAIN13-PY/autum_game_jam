extends Node2D


var pumpkin = preload("res://scenes/Pumpkin.tscn")
var enemy = preload("res://scenes/Enemy.tscn")
func spawn_pumpkin():
	Global.instance_node(pumpkin, Vector2(rand_range(0,1024), rand_range(0, 600)), self)


func _on_Enemy_Spawn_Timer_timeout():
	var enemy_pos = Vector2(rand_range(-50, 1074), rand_range(-50, 650))
	while enemy_pos.x > -10 and enemy_pos.x < 1040 and enemy_pos.y > -10 and enemy_pos.y < 610:
		enemy_pos = Vector2(rand_range(-50, 1074), rand_range(-50, 650))
	Global.instance_node(enemy, enemy_pos, self)


func _on_Pumpkin_random_spawn_timeout():
	spawn_pumpkin()
