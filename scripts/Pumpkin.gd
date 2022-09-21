extends StaticBody2D


func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"):
		Global.Player_points += round(rand_range(50, 150))
		Global.instance_node(self, Vector2(rand_range(0, 1024), rand_range(0,600)), self)
		queue_free()
		
