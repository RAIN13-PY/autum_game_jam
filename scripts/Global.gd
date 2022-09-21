extends Node
var Player_points = 0
var Player_kills = 0
var health = 3
var player

func instance_node(node, location, parent):
	var node_instance = node.instance()
	parent.add_child(node_instance)
	node_instance.global_position = location
	return node_instance
