extends ProgressBar


func _process(_delta):
	if Global.health == 3:
		value = 100
	elif Global.health == 2:
		value = 66
	elif Global.health == 1:
		value = 33
	elif Global.health == 0:
		value = 0
