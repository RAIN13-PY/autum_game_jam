extends Sprite


var d = 0.0
var radius = 100
var speed = -4
func _process(delta):
	d += delta
	global_position = Vector2(
		sin(d * speed) * radius,
		cos(d * speed) * radius
	) + Vector2(get_parent().global_position.x, get_parent().global_position.y)
	look_at(get_parent().global_position)


func _on_Area2D_area_entered(area):
	if area.is_in_group("Enemy"):
		print("Sword Hit! : "+area.get_name())
