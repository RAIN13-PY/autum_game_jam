extends Node2D


var pumpkin = preload("res://scenes/Pumpkin.tscn")

func spawn_pumpkin():
	Global.instance_node(pumpkin, Vector2(rand_range(0,1024), rand_range(0, 600)), self)
