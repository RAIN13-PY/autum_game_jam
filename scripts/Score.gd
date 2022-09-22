extends Label


func _process(_delta):
	text = "Score: " + str(Global.Player_points)
