extends StaticBody2D


func _on_Area2D_area_entered(area):
	if area.is_in_group("Player"):
		Global.Player_points += round(rand_range(50, 150))
		Stage.spawn_pumpkin()
		queue_free()
		
