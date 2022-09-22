extends Label
func _ready():
	visible = false
func _process(_delta):
	if Global.health <= 0:
		visible = true
		Global.health = 3
		yield(get_tree().create_timer(1), "timeout")
		get_tree().reload_current_scene()
